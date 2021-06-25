//
//  NewPlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 24/06/21.
//

import UIKit
import AVFoundation

class NewPlayViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var partiturCollectionView: UICollectionView!
    @IBOutlet weak var labelNot: UILabel!
    
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
        
    @IBOutlet weak var buttonC4: UIButton!
    @IBOutlet weak var buttonD4: UIButton!
    @IBOutlet weak var buttonE4: UIButton!
    @IBOutlet weak var buttonF4: UIButton!
    @IBOutlet weak var buttonG4: UIButton!
    @IBOutlet weak var buttonA4: UIButton!
    @IBOutlet weak var buttonB4: UIButton!
    @IBOutlet weak var buttonC5: UIButton!
    @IBOutlet weak var imageHandSign: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        angklungNote = 0
        becomeFirstResponder()
        resetButton()
        
        partiturCollectionView.register(UINib.init(nibName: "PartiturCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "partiturCell")
    
        partiturCollectionView.delegate = self
        partiturCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return textKey.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "partiturCell", for: indexPath) as! PartiturCollectionViewCell
        
        // kasih wanra urutan ke 0
      //  if(indexPath.item==0){
      //      cell.labelKey.textColor = .green
      //      cell.labelText.textColor = .green
      //  }
        
        // manggil array di atas, datanya
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
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        angklungSound.play()
             
        if keyTapped == textKey[0]{
        
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
            let storyboard = UIStoryboard(name: "Congratulations", bundle: nil);
            let viewController = storyboard.instantiateViewController(withIdentifier: "Congrats") as! CongratulationsViewController;
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }

        // untuk scroll nya otomatis waktu ada shake
//            self.collectionView.scrollToItem(at:IndexPath(item: indexNumber, section: sectionNumber), at: .right, animated: false)
    
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
    
    @IBAction func finishButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Congratulations", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "Congrats") as! CongratulationsViewController;
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
//        cell.setUI(key: "E", text: "Su")
        
//        cell.labelKey.text = array[index.row].key
}
