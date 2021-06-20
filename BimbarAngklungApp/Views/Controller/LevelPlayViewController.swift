//
//  LevelPlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 16/06/21.
//

import UIKit
import AVFoundation

class LevelPlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        levelPlayAngklungImage.image = UIImage(named: "AngklungTest")
        nadaAngklung = 0
        becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var levelPlayAngklungImage: UIImageView!
    
    var nadaAngklung: Int = 0
    
    var suaraAngklung = AVAudioPlayer()
    
    
    @IBAction func nadaC4(_ sender: Any) {
        nadaAngklung = 1
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaD4(_ sender: Any) {
        nadaAngklung = 2
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaE4(_ sender: Any) {
        nadaAngklung = 3
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaF4(_ sender: Any) {
        nadaAngklung = 4
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaG4(_ sender: Any) {
        nadaAngklung = 5
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaA4(_ sender: Any) {
        nadaAngklung = 6
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaB4(_ sender: Any) {
        nadaAngklung = 7
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    @IBAction func nadaC5(_ sender: Any) {
        nadaAngklung = 8
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
        } catch {
            print("Error")
        }
    suaraAngklung.prepareToPlay()
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        suaraAngklung.play()
        
    }
// setelah pilih not, dia cuma shake not itu aja
//    if  (not == "C"){
//    runAV(notfile: "C4.aiff")
//    }else if (not == "D){
//    runAV(notfile: "D4.aiff")
    
}
