
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
        
        Not1btn.backgroundColor = UIColor.white
        Not2btn.backgroundColor = UIColor.white
        Not3btn.backgroundColor = UIColor.white
        Not4btn.backgroundColor = UIColor.white
        Not5btn.backgroundColor = UIColor.white
        Not6btn.backgroundColor = UIColor.white
        Not7btn.backgroundColor = UIColor.white
        Not1hibtn.backgroundColor = UIColor.white
        Not1btn.setTitleColor(UIColor.black, for: .normal)
        Not2btn.setTitleColor(UIColor.black, for: .normal)
        Not3btn.setTitleColor(UIColor.black, for: .normal)
        Not4btn.setTitleColor(UIColor.black, for: .normal)
        Not5btn.setTitleColor(UIColor.black, for: .normal)
        Not6btn.setTitleColor(UIColor.black, for: .normal)
        Not7btn.setTitleColor(UIColor.black, for: .normal)
        Not1hibtn.setTitleColor(UIColor.black, for: .normal)
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var Labelnot2: UILabel!
    @IBAction func Not1Clicked(_ sender: Any) {
        changeLabel2(text: "C pops up in the song")
        resetColorBtn()
        Not1btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    @IBAction func Not2Clickeed(_ sender: Any) {
        changeLabel2(text: "D pops up in the song")
        resetColorBtn()
        Not2btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not3Clicked(_ sender: Any) {
        changeLabel2(text: "E pops up in the song")
        resetColorBtn()
        Not3btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not4Clicked(_ sender: Any) {
        changeLabel2(text: "F pops up in the song")
        resetColorBtn()
        Not4btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not5Clicked(_ sender: Any) {
        changeLabel2(text: "G pops up in the song")
        resetColorBtn()
        Not5btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not6Clicked(_ sender: Any) {
        changeLabel2(text: "A pops up in the song")
        resetColorBtn()
        Not6btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not7Clicked(_ sender: Any) {
        changeLabel2(text: "B pops up in the song")
        resetColorBtn()
        Not7btn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }
    
    @IBAction func Not1highClicked(_ sender: Any) {
        changeLabel2(text: "C. pops up in the song")
        resetColorBtn()
        Not1hibtn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
            suaraAngklung.play()} catch {
            print("Error")
        }
    }

    func changeLabel2(text: String) {
        Labelnot2.text = text
    }
    func resetColorBtn() {
        Not1btn.backgroundColor = UIColor.white
        Not2btn.backgroundColor = UIColor.white
        Not3btn.backgroundColor = UIColor.white
        Not4btn.backgroundColor = UIColor.white
        Not5btn.backgroundColor = UIColor.white
        Not6btn.backgroundColor = UIColor.white
        Not7btn.backgroundColor = UIColor.white
        Not1hibtn.backgroundColor = UIColor.white
    }
    
    
    @IBAction func tapPlayNotViewController(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "LevelPlay")
        self.navigationController?.pushViewController(viewController, animated: true)
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
