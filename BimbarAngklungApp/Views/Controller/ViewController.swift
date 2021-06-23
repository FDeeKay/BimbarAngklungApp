//
//  ViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 14/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        mainImage.image = UIImage(named: "Main Screen - Free play")
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

