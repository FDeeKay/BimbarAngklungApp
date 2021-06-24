//
//  NotSelectedViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 23/06/21.
//

import UIKit

class NotSelectedViewController: UIViewController {
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var youGotText: UILabel!
    @IBOutlet weak var imageHandSign: UIImageView!
    
    var youGotKey : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        youGotText.text = ""
        youGotText.text = "You Got \(youGotKey)!"
        
        switch youGotKey {
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
            
        default:
            print("gak milih key")
        }
        
        NextButton.layer.cornerRadius = 20
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "GoToLevelPlay", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToLevelPlay" {
            let LevelPlayViewController = segue.destination as? LevelPlayViewController
            LevelPlayViewController?.modalPresentationStyle = .fullScreen
        }
    }

}
