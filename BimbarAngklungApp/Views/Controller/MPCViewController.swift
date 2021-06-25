//
//  MPCViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 20/06/21.
//
import UIKit
import MultipeerConnectivity
import AVFoundation

class MPCViewController: UIViewController, MCSessionDelegate, MCBrowserViewControllerDelegate, MCNearbyServiceAdvertiserDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var hostButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var partiturCollectionView: UICollectionView!
    @IBOutlet weak var buttonC4: UIButton!
    @IBOutlet weak var buttonD4: UIButton!
    @IBOutlet weak var buttonE4: UIButton!
    @IBOutlet weak var buttonF4: UIButton!
    @IBOutlet weak var buttonG4: UIButton!
    @IBOutlet weak var buttonA4: UIButton!
    @IBOutlet weak var buttonB4: UIButton!
    @IBOutlet weak var buttonC5: UIButton!
    @IBOutlet weak var imageHandSign: UIImageView!
    
    var number = 0
    
    var peerID: MCPeerID!
    var mcSession: MCSession!
    var mcAdvertiserAssistant: MCNearbyServiceAdvertiser!
    
    var suaraAngklung = AVAudioPlayer()
    
    var myNot : String = ""
    
    var textKey: [String] = ["E", "G", "G", "E", "F", "G",
        "E", "F", "F", "G", "E", "F",
        "G", "B", "B", "B", "C'","C'", "B",
        "B", "B", "A", "A", "F",
        "F", "E", "E", "C", ""]
    
    var textLyric: [String] = ["Su", "we", "o", "ra", "ja", "mu",
    "ja", "mu", "go", "dhong", "te", "lo",
    "Su", "we", "o", "ra", "ke", "te", "mu",
    "ke", "te", "mu", "pi", "san",
    "ga", "we", "ge", "lo", ""]
    
    var frame = CGRect(x:0, y:0, width:0, height: 0)
    
    var angklungSound = AVAudioPlayer()
    var angklungNote : Int = 0
    var keyTapped : String = ""
    
    var isShake :Bool = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        angklungNote = 0
        becomeFirstResponder()
        resetButton()
        
        partiturCollectionView.register(UINib.init(nibName: "PartiturCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "partiturCell")
    
        partiturCollectionView.delegate = self
        partiturCollectionView.dataSource = self
        
        peerID = MCPeerID(displayName: UIDevice.current.name)
        mcSession = MCSession(peer: peerID, securityIdentity: nil, encryptionPreference: .required)
        mcSession.delegate = self
        
        hostButton.layer.cornerRadius = 20
        guestButton.layer.cornerRadius = 20
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textKey.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partiturCell", for: indexPath) as! PartiturCollectionViewCell
        cell.labelKey.text = textKey[indexPath.row]
        
        cell.labelText.text = textLyric[indexPath.row]
        
        return cell
    }
    
    // button sound and shake
    
@IBAction func buttonC4Tapped(_ sender: Any) {
    angklungNote = 1
    resetButton()
    buttonC4.setImage(UIImage(named: "Free Play - 1_C (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
        keyTapped = "C"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonD4Tapped(_ sender: Any) {
    angklungNote = 2
    resetButton()
    buttonD4.setImage(UIImage(named: "Free Play - 2_D (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
        keyTapped = "D"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonE4Tapped(_ sender: Any) {
    angklungNote = 3
    resetButton()
    buttonE4.setImage(UIImage(named: "Free Play - 3_E (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
        keyTapped = "E"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonF4Tapped(_ sender: Any) {
    angklungNote = 4
    resetButton()
    buttonF4.setImage(UIImage(named: "Free Play - 4_F (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
        keyTapped = "F"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonG4Tapped(_ sender: Any) {
    angklungNote = 5
    resetButton()
    buttonG4.setImage(UIImage(named: "Free Play - 5_G (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
        keyTapped = "G"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonA4Tapped(_ sender: Any) {
    angklungNote = 6
    resetButton()
    buttonA4.setImage(UIImage(named: "Free Play - 6_A (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
        keyTapped = "A"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonB4Tapped(_ sender: Any) {
    angklungNote = 7
    resetButton()
    buttonB4.setImage(UIImage(named: "Free Play - 7_B (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
        keyTapped = "B"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}

@IBAction func buttonC5Tapped(_ sender: Any) {
    angklungNote = 8
    resetButton()
    buttonC5.setImage(UIImage(named: "Free Play - 8_C' (on)"), for: .normal)
    
    do{
        angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
        keyTapped = "C'"
    } catch {
        print("Error")
    }
    angklungSound.prepareToPlay()
}
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    func resetButton(){
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
    }
    

    func updateKey(status: String, currentKey: String) {
        if status == "true" {
            textKey.removeFirst()
            textLyric.removeFirst()
            partiturCollectionView.reloadData()
            
            switch currentKey {
            case "C":
                imageHandSign.image = UIImage(named: "1_C")

            case "D":
                imageHandSign.image = UIImage(named: "2_D")

            case "E":
                imageHandSign.image = UIImage(named: "3_E")
                
            case "F":
                imageHandSign.image = UIImage(named: "4_F")
                
            case "G":
                imageHandSign.image = UIImage(named: "5_G")
                
            case "A":
                imageHandSign.image = UIImage(named: "6_A")
                
            case "B":
                imageHandSign.image = UIImage(named: "7_B")
            
            case "C'":
                imageHandSign.image = UIImage(named: "8_C'")
                
            default:
                print("gak milih key")
            }
            
            if textKey[0] == ""{
                performSegue(withIdentifier: "GoToCongratulations", sender: self)
            }
        }
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        angklungSound.play()
        
        if keyTapped == textKey[0]{
            isShake = true
            sendToAnotherDevice(keyTap: keyTapped)
            textKey.removeFirst()
            textLyric.removeFirst()
            partiturCollectionView.reloadData()
        }
        
        switch keyTapped {
        case "C":
            imageHandSign.image = UIImage(named: "1_C")

        case "D":
            imageHandSign.image = UIImage(named: "2_D")

        case "E":
            imageHandSign.image = UIImage(named: "3_E")
            
        case "F":
            imageHandSign.image = UIImage(named: "4_F")
            
        case "G":
            imageHandSign.image = UIImage(named: "5_G")
            
        case "A":
            imageHandSign.image = UIImage(named: "6_A")
            
        case "B":
            imageHandSign.image = UIImage(named: "7_B")
        
        case "C'":
            imageHandSign.image = UIImage(named: "8_C'")
            
        default:
            print("gak milih key")
        }
        
        if textKey[0] == ""{
            performSegue(withIdentifier: "GoToCongratulations", sender: self)
        }
    }
    
    func sendToAnotherDevice(keyTap :String) {
        numberLabel.text = String(1)
        sendData(data: "\(isShake),\(keyTap)")
        isShake = false
    }
    

    //button actions
    @IBAction func hostButton(_ sender: Any) {
        startHosting()
    }
    
    @IBAction func guestButton(_ sender: Any) {
        joinSession()
    }
    
    @IBAction func sendButton(_ sender: Any) {
        //send data to the other device
        number = number + 1
        sendData(data: "\(number)")
        numberLabel.text = String(number)
    }
    
    // send data to other users
    func sendData(data: String) {
        if mcSession.connectedPeers.count > 0 {
            if let textData = data.data (using: .utf8) {
                do {
                    try mcSession.send(textData, toPeers: mcSession.connectedPeers, with: .reliable)
                } catch let error as NSError {
                    //error sending data
                    print(error.localizedDescription)
                }
            }
        }
    }
    //start hosting a new room
    func startHosting(){
        mcAdvertiserAssistant = MCNearbyServiceAdvertiser(peer: peerID, discoveryInfo: nil, serviceType: "mp-number")
        mcAdvertiserAssistant.delegate = self
        mcAdvertiserAssistant.startAdvertisingPeer()
        print ("test hosting")
    }
    
    //join a room
    func joinSession() {
        let mcBrowser = MCBrowserViewController(serviceType: "mp-number", session: mcSession)
        mcBrowser.delegate = self
        present(mcBrowser, animated: true)
    }
    
    //session methods
    
    func session(_ session: MCSession, peer peerID: MCPeerID, didChange state: MCSessionState) {
        switch state {
        case MCSessionState.connected:
            print("Connected: \(peerID.displayName)")
            
        case MCSessionState.connecting:
            print("Connecting: \(peerID.displayName)")
            
        case MCSessionState.notConnected:
            print("Connected: \(peerID.displayName)")
            
        @unknown default:
            fatalError()
        }
    }
    
    func session(_ session: MCSession, didReceive data: Data, fromPeer peerID: MCPeerID) {
        //data received
        if let text = String(data: data, encoding: .utf8) {
            DispatchQueue.main.async { [self] in
                //display the text in the label
                print(text, "DATA")
                let splitText = text.split(separator: ",")
                print(splitText, "ARRAY")
                updateKey(status: String(splitText[0]), currentKey: String(splitText[1]))
                self.numberLabel.text = text
                self.playSound() // func masukin ke data received
             
            }
        }
    }
    
    func playSound () {
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
            // func buat ada suara nya
            suaraAngklung.play()
        } catch {
            print("Error")
        }
    }
    
    // BAWAH SINI GA USAH DI SENTUH
    
    func session(_ session: MCSession, didReceive stream: InputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        
    }
    
    func session(_ session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, with progress: Progress) {
        
    }
    
    func session(_ session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, at localURL: URL?, withError error: Error?) {
        
    }
    
    //browser methods
    
    func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController) {
        dismiss(animated: true)
    }
    
    func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController) {
        dismiss(animated: true)
    }
    
    //advertiser methods
    func advertiser(_ advertiser: MCNearbyServiceAdvertiser, didReceiveInvitationFromPeer peerID: MCPeerID, withContext context: Data?, invitationHandler: @escaping (Bool, MCSession?) -> Void) {
        //accept the connection/invitation
        invitationHandler(true, mcSession)
    }
}

