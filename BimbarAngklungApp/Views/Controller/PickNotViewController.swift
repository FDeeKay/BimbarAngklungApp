
//  PlayNotViewController.swift
//  BimbarAngklungApp
//
//  Created by Rima Cholilah on 20/06/21.
//

import UIKit
import AVFoundation

class PickNotViewController: UIViewController {
    
    var suaraAngklung = AVAudioPlayer()
    var keyChosen : String = ""
    
    @IBOutlet weak var Not1btn: UIButton!
    @IBOutlet weak var Not2btn: UIButton!
    @IBOutlet weak var Not3btn: UIButton!
    @IBOutlet weak var Not4btn: UIButton!
    @IBOutlet weak var Not5btn: UIButton!
    @IBOutlet weak var Not6btn: UIButton!
    @IBOutlet weak var Not7btn: UIButton!
    @IBOutlet weak var Not1hibtn: UIButton!
    @IBOutlet weak var NextButton: UIButton!
    
    var btn1IsTouched = false
    var btn2IsTouched = false
    var btn3IsTouched = false
    var btn4IsTouched = false
    var btn5IsTouched = false
    var btn6IsTouched = false
    var btn7IsTouched = false
    var btn8IsTouched = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1IsTouched = false
        btn2IsTouched = false
        btn3IsTouched = false
        btn4IsTouched = false
        btn5IsTouched = false
        btn6IsTouched = false
        btn7IsTouched = false
        btn8IsTouched = false
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
        Not1btn.layer.cornerRadius = 20
        Not2btn.layer.cornerRadius = 20
        Not3btn.layer.cornerRadius = 20
        Not4btn.layer.cornerRadius = 20
        Not5btn.layer.cornerRadius = 20
        Not6btn.layer.cornerRadius = 20
        Not7btn.layer.cornerRadius = 20
        Not1hibtn.layer.cornerRadius = 20
        NextButton.layer.cornerRadius = 20
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        // Do any additional setup after loading the view.
    }

    var arrayPickNot:[String] = []
    
    
    
    @IBOutlet weak var Labelnot2: UILabel!
    @IBAction func Not1Clicked(_ sender: Any) {
        if btn1IsTouched == false{
            changeLabel2(text: "C pops up in the song")
            //resetColorBtn()
            Not1btn.backgroundColor = UIColor.systemGreen
            btn1IsTouched = true
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "C"
            } catch {
                print("Error")
            }
        } else if btn1IsTouched == true{
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not1btn.backgroundColor = UIColor.white
            btn1IsTouched = false
        }
    }
    
    @IBAction func Not2Clickeed(_ sender: Any) {
        if btn2IsTouched == false{
            changeLabel2(text: "D pops up in the song")
            //resetColorBtn()
            Not2btn.backgroundColor = UIColor.systemGreen
            btn2IsTouched = true
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "D"
            } catch {
                print("Error")
            }
        } else if btn2IsTouched == true {
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not2btn.backgroundColor = UIColor.white
            btn2IsTouched = false
        }
    }
    
    @IBAction func Not3Clicked(_ sender: Any) {
        if btn3IsTouched == false{
            changeLabel2(text: "E pops up in the song")
            //resetColorBtn()
            Not3btn.backgroundColor = UIColor.systemGreen
            btn3IsTouched = true
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "E"
            } catch {
                print("Error")
            }
        } else if btn3IsTouched == true {
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not3btn.backgroundColor = UIColor.white
            btn3IsTouched = false
        }
    }
    
    @IBAction func Not4Clicked(_ sender: Any) {
        if btn4IsTouched == false{
            changeLabel2(text: "F pops up in the song")
            //resetColorBtn()
            Not4btn.backgroundColor = UIColor.systemGreen
            btn4IsTouched = true
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "F"
            } catch {
                print("Error")
            }
        } else if btn4IsTouched == true{
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not4btn.backgroundColor = UIColor.white
            btn4IsTouched = false
        }
    }
    
    @IBAction func Not5Clicked(_ sender: Any) {
        if btn5IsTouched == false{
            changeLabel2(text: "G pops up in the song")
            //resetColorBtn()
            Not5btn.backgroundColor = UIColor.systemGreen
            btn5IsTouched = false
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "G"
            } catch {
                print("Error")
            }
        } else if btn5IsTouched == true{
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not5btn.backgroundColor = UIColor.white
            btn5IsTouched = false
        }
    }
    
    @IBAction func Not6Clicked(_ sender: Any) {
        if btn6IsTouched == false {
            changeLabel2(text: "A pops up in the song")
            //resetColorBtn()
            Not6btn.backgroundColor = UIColor.systemGreen
            btn6IsTouched = true
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "A"
            } catch {
                print("Error")
            }
        } else if btn6IsTouched == true{
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not6btn.backgroundColor = UIColor.white
            btn6IsTouched = false
        }
    }
    
    @IBAction func Not7Clicked(_ sender: Any) {
        if btn7IsTouched == false{
            changeLabel2(text: "B pops up in the song")
            //resetColorBtn()
            Not7btn.backgroundColor = UIColor.systemGreen
            btn7IsTouched = true
            do{
                suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
                suaraAngklung.play()
                keyChosen = "B"
            } catch {
                print("Error")
            }
        } else if btn7IsTouched == true{
            changeLabel2(text: "your note pops up in the song")
            //resetColorBtn()
            Not7btn.backgroundColor = UIColor.white
            btn7IsTouched = false
        }
    }
    
    @IBAction func Not1highClicked(_ sender: Any) {
        changeLabel2(text: "C' pops up in the song")
        resetColorBtn()
        Not1hibtn.backgroundColor = UIColor.systemGreen
        do{
            suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
            suaraAngklung.play()
            keyChosen = "C'"
        } catch {
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
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToNotSelected", sender: sender)
    }
    
    @IBAction func tapPlayNotViewController(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "LevelPlay") as! LevelPlayViewController
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToNotSelected" {
            let NotSelectedViewController = segue.destination as? NotSelectedViewController
            NotSelectedViewController?.modalPresentationStyle = .fullScreen
            NotSelectedViewController?.youGotKey = keyChosen
        }
    }
    

}
