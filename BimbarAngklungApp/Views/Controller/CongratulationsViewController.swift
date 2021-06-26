//
//  CongratulationsViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 23/06/21.
//

import UIKit

class CongratulationsViewController: UIViewController {
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    var previousPage : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backToMainScreen(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func pickOtherSong(_ sender: Any) {
        performSegue(withIdentifier: "GoToSelectSong", sender: sender)
    }
    
    
    @IBAction func playAgain(_ sender: Any) {
        if previousPage == "NewPlayScreen" {
            let yourArticleViewController = UIStoryboard(name: "NewPlayScreen", bundle: nil).instantiateViewController(withIdentifier: "NewPlayScreen") as! NewPlayViewController
            self.navigationController?.pushViewController(yourArticleViewController, animated: true)
//            performSegue(withIdentifier: "GoToPlayScreen", sender: sender)
        }else if previousPage == "MPCBoard" {
            let yourArticleViewController = UIStoryboard(name: "MPC", bundle: nil).instantiateViewController(withIdentifier: "MPCBoard") as! MPCViewController
            self.navigationController?.pushViewController(yourArticleViewController, animated: true)
//            performSegue(withIdentifier: "GoToMPCBoard", sender: sender)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "GoToPlayScreen" {
//            let newPlayViewController = segue.destination as? NewPlayViewController
//            newPlayViewController?.modalPresentationStyle = .fullScreen
//        }else
        if segue.identifier == "GoToMPCBoard"{
            let mpcViewController = segue.destination as? MPCViewController
            mpcViewController?.modalPresentationStyle = .fullScreen
        }else if segue.identifier == "GoToSelectSong" {
                let selectSongViewController = segue.destination as? SelectSongViewController
                selectSongViewController?.modalPresentationStyle = .fullScreen
        }
    }

}
