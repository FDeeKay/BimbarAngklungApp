//
//  FreePlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 15/06/21.
//

import UIKit
import AVFoundation
import CoreMotion

class FreePlayViewController: UIViewController {

    //properties
    var kunciPressed = ""
    var angklungSound = AVAudioPlayer()
    let motion = CMMotionManager()
    var timer = Timer()
    var soundURI: URL?
    var firstShake = false
    var secondShake = false
    var counter = 0
    var angklungNote: Int = 0
    
    //images
    @IBOutlet weak var freePlayImage: UIImageView!
    
    //outlet buttons
    @IBOutlet weak var buttonC4: UIButton!
    @IBOutlet weak var buttonD4: UIButton!
    @IBOutlet weak var buttonE4: UIButton!
    @IBOutlet weak var buttonF4: UIButton!
    @IBOutlet weak var buttonG4: UIButton!
    @IBOutlet weak var buttonA4: UIButton!
    @IBOutlet weak var buttonB4: UIButton!
    @IBOutlet weak var buttonC5: UIButton!
    
    //viewdidload
    override func viewDidLoad() {
        super.viewDidLoad()
        freePlayImage.image = UIImage(named: "Angklung")
        angklungNote = 0
        playSoundStop()
        resetButton()
        startGyros()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        stopGyros()
        playSoundStop()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        stopGyros()
        playSoundStop()
    }
    //Key C
    @IBAction func noteC4(_ sender: Any) {
        angklungNote = 1
        kunciPressed = "C4"
        resetButton()
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key D
    @IBAction func noteD4(_ sender: Any) {
        angklungNote = 2
        kunciPressed = "D4"
        resetButton()
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key E
    @IBAction func noteE4(_ sender: Any) {
        angklungNote = 3
        kunciPressed = "E4"
        resetButton()
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key F
    @IBAction func noteF4(_ sender: Any) {
        angklungNote = 4
        kunciPressed = "F4"
        resetButton()
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key G
    @IBAction func noteG4(_ sender: Any) {
        angklungNote = 5
        kunciPressed = "G4"
        resetButton()
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key A
    @IBAction func noteA4(_ sender: Any) {
        angklungNote = 6
        kunciPressed = "A4"
        resetButton()
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key B
    @IBAction func noteB4(_ sender: Any) {
        angklungNote = 7
        kunciPressed = "B4"
        resetButton()
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
    
    //Key C tinggi
    @IBAction func noteC5(_ sender: Any) {
        angklungNote = 8
        kunciPressed = "C5"
        resetButton()
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (on)"), for: .normal)
//            do{
//                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
//            } catch {
//                print("Error")
//            }
        angklungSound.prepareToPlay()
    }
//
//
//    override var canBecomeFirstResponder: Bool {
//        return true
//    }
//
//    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
//        angklungSound.play()
//    }
    
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
    
    //func Gyroscope
    func startGyros() {
       if motion.isGyroAvailable {
          self.motion.gyroUpdateInterval = 1.0 / 60.0
          self.motion.startGyroUpdates()

          // Configure a timer to fetch the accelerometer data.
          self.timer = Timer(fire: Date(), interval: (1.0/60.0),
                             repeats: true, block: { [self] (timer) in
             // Get the gyro data.
             if let data = self.motion.gyroData {
                let x = data.rotationRate.x
//                let y = data.rotationRate.y
//                let z = data.rotationRate.z
                
                //goyang kiri
                if x <= -1 {
                    self.firstShake = true
                    freePlayImage.transform = CGAffineTransform(rotationAngle: .pi/20)
                }
                
                //goyang kanan
                if x >= 1 {
                    self.secondShake = true
                    freePlayImage.transform = .identity
                }
            
                if self.firstShake && self.secondShake {
                    print("YUK BUNYI" + String(self.counter))
                    self.counter+=1
                    //GIMAANA CARA LU PLAY NYA
                    playSound(file: kunciPressed, fileExtension: "aiff")
                    self.secondShake = false
                    self.firstShake = false
//                    self.stopGyros()
                }
                // Use the gyroscope data in your app.
             }
          })

        // Add the timer to the current run loop.
        RunLoop.current.add(self.timer, forMode: .default)
       }
    }
    
    func stopGyros() {
       if self.timer != nil {
            self.timer.invalidate()
            self.timer = Timer()
            self.motion.stopGyroUpdates()
       }
    }
    
    //play lagu
    func playSound(file: String, fileExtension: String, isLoop: Bool = false){
        soundURI = URL(fileURLWithPath: Bundle.main.path(forResource: file, ofType: fileExtension)!)
        do {
            guard let uri = soundURI else {return}
            angklungSound = try AVAudioPlayer(contentsOf: uri)
            angklungSound.play()
        } catch {
            print("something went wrong")
        }
    }
    
    func playSoundStop() {
        angklungSound.stop()
    }
}

