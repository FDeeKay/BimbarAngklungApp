//
//  PlayNotViewController.swift
//  BimbarAngklungApp
//
//  Created by Rima Cholilah on 20/06/21.
//

import UIKit
import AVFoundation

class PickNotViewController: UIViewController {
    var suaraAngklung = AVAudioPlayer()
    
    
    @IBOutlet weak var Not1btn: UIButton!
    @IBOutlet weak var Not2btn: UIButton!
    @IBOutlet weak var Not3btn: UIButton!
    @IBOutlet weak var Not4btn: UIButton!
    @IBOutlet weak var Not5btn: UIButton!
    @IBOutlet weak var Not6btn: UIButton!
    @IBOutlet weak var Not7btn: UIButton!
    @IBOutlet weak var Not1hibtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        Not2btn.isEnabled = false
        Not4btn.isEnabled = false
        Not6btn.isEnabled = false
        Not7btn.isEnabled = false
        Not1hibtn.isEnabled = false
        
        Not1btn.backgroundColor = UIColor.systemBlue
        Not3btn.backgroundColor = UIColor.systemBlue
        Not5btn.backgroundColor = UIColor.systemBlue
        Not1btn.setTitleColor(UIColor.black, for: .normal)
        Not3btn.setTitleColor(UIColor.black, for: .normal)
        Not5btn.setTitleColor(UIColor.black, for: .normal)
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Labelnot1: UILabel!
    @IBOutlet weak var Labelnot2: UILabel!
    @IBAction func Not1Clicked(_ sender: Any) {
        changeLabel1(text: "1 = C / do")
        changeLabel2(text: "1 pops up in the song")
        resetColorBtn()
        Not1btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    @IBAction func Not2Clickeed(_ sender: Any) {
        changeLabel1(text: "2 = D / re")
        changeLabel2(text: "2 pops up in the song")
    }
    
    @IBAction func Not3Clicked(_ sender: Any) {
        changeLabel1(text: "3 = E / mi")
        changeLabel2(text: "3 pops up in the song")
        resetColorBtn()
        Not3btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not4Clicked(_ sender: Any) {
        changeLabel1(text: "4 = F / fa")
        changeLabel2(text: "4 pops up in the song")
    }
    
    @IBAction func Not5Clicked(_ sender: Any) {
        changeLabel1(text: "5 = G / sol")
        changeLabel2(text: "5 pops up in the song")
        resetColorBtn()
        Not5btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not6Clicked(_ sender: Any) {
        changeLabel1(text: "6 = A / la")
        changeLabel2(text: "6 pops up in the song")
    }
    
    @IBAction func Not7Clicked(_ sender: Any) {
        changeLabel1(text: "7 = B / si")
        changeLabel2(text: "7 pops up in the song")
    }
    
    @IBAction func Not1highClicked(_ sender: Any) {
        changeLabel1(text: "1. = C. / do tinggi")
        changeLabel2(text: "1. pops up in the song")
    }
    
    func changeLabel1(text: String) {
        Labelnot1.text = text
    }
    func changeLabel2(text: String) {
        Labelnot2.text = text
    }
    func resetColorBtn() {
        Not1btn.backgroundColor = UIColor.systemBlue
        Not3btn.backgroundColor = UIColor.systemBlue
        Not5btn.backgroundColor = UIColor.systemBlue
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
