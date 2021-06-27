//
//  ViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 14/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AngklungImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.image = UIImage(named: "Main Screen - Free play")
        UIView.animateKeyframes(withDuration: 1.5, delay: 0, options: [.autoreverse, .repeat]){
            self.AngklungImage.frame = CGRect(x: 89, y: 255, width: 212, height: 294)}
        
        mainImage.isUserInteractionEnabled = true
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var mainImage: UIImageView!
    
    
    @IBAction func badgeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Badges", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "Badges") as! BadgesViewController;
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func songsButton(_ sender: Any) {
        performSegue(withIdentifier: "GoToChoosePlayer", sender: sender)
    }
    
}

