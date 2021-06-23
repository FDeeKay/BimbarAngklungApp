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
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var freePlayImage: UIImageView!
    
    var angklungNote: Int = 0
        
    var angklungSound = AVAudioPlayer()
    
    @IBAction func noteC4(_ sender: Any) {
        angklungNote = 1
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteD4(_ sender: Any) {
        angklungNote = 2
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteE4(_ sender: Any) {
        angklungNote = 3
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteF4(_ sender: Any) {
        angklungNote = 4
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteG4(_ sender: Any) {
        angklungNote = 5
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteA4(_ sender: Any) {
        angklungNote = 6
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteB4(_ sender: Any) {
        angklungNote = 7
            do{
                angklungSound = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
            } catch {
                print("Error")
            }
        angklungSound.prepareToPlay()
    }
    
    @IBAction func noteC5(_ sender: Any) {
        angklungNote = 8
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
