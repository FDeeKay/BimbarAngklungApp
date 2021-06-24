//
//  PlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Rima Cholilah on 24/06/21.
//

import UIKit
import AVFoundation
class PlayViewController: UIViewController {

    @IBOutlet weak var labelNot: UILabel!

        var myNot : String = ""
        var suaraAngklung = AVAudioPlayer()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            labelNot.text = ""
            labelNot.text = " \(myNot)"
            
        let size:CGFloat = 40.0 // 35.0 chosen arbitrarily

        labelNot.bounds = CGRect(x: 0.0, y: 0.0, width: size, height: size)
        labelNot.layer.cornerRadius = size / 2
            labelNot.layer.borderColor = UIColor.clear.cgColor
          
            switch myNot {
            case "C":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
                
            case "D":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "D4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
            case "E":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "E4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
                
            case "F":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "F4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
                
            case "G":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "G4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
                
            case "A":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "A4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
                
            case "B":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "B4", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
            
            case "C'":
                do{
                    suaraAngklung = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "C5", ofType: "aiff") ?? ""))
                    suaraAngklung.play()
                } catch {
                    print("Error")
                }
            default:
                print("eror")
            }
        // Do any additional setup after loading the view.
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            suaraAngklung.play()
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
