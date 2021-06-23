//
//  FreePlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 15/06/21.
//

import UIKit
import AVFoundation

class FreePlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        freePlayImage.image = UIImage(named: "AngklungTest")
        angklungNote = 0
        becomeFirstResponder()
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var freePlayImage: UIImageView!
    
    @IBOutlet weak var buttonC4: UIButton!
    @IBOutlet weak var buttonD4: UIButton!
    @IBOutlet weak var buttonE4: UIButton!
    @IBOutlet weak var buttonF4: UIButton!
    @IBOutlet weak var buttonG4: UIButton!
    @IBOutlet weak var buttonA4: UIButton!
    @IBOutlet weak var buttonB4: UIButton!
    @IBOutlet weak var buttonC5: UIButton!
    
    
    var angklungNote: Int = 0
        
    var angklungSound = AVAudioPlayer()
    
    @IBAction func noteC4(_ sender: Any) {
        angklungNote = 1
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (on)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteD4(_ sender: Any) {
        angklungNote = 2
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (on)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteE4(_ sender: Any) {
        angklungNote = 3
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (on)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteF4(_ sender: Any) {
        angklungNote = 4
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (on)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteG4(_ sender: Any) {
        angklungNote = 5
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (on)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteA4(_ sender: Any) {
        angklungNote = 6
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (on)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteB4(_ sender: Any) {
        angklungNote = 7
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (on)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (off)"), for: .normal)
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteC5(_ sender: Any) {
        angklungNote = 8
        
        buttonC4.setImage(UIImage(named: "Free Play - 1_C (off)"), for: .normal)
        buttonD4.setImage(UIImage(named: "Free Play - 2_D (off)"), for: .normal)
        buttonE4.setImage(UIImage(named: "Free Play - 3_E (off)"), for: .normal)
        buttonF4.setImage(UIImage(named: "Free Play - 4_F (off)"), for: .normal)
        buttonG4.setImage(UIImage(named: "Free Play - 5_G (off)"), for: .normal)
        buttonA4.setImage(UIImage(named: "Free Play - 6_A (off)"), for: .normal)
        buttonB4.setImage(UIImage(named: "Free Play - 7_B (off)"), for: .normal)
        buttonC5.setImage(UIImage(named: "Free Play - 8_C' (on)"), for: .normal)
        
        
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
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
    }
    
    
    
}
