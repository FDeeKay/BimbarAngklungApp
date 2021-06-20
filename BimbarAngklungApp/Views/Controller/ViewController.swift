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
        mainImage.image = UIImage(named: "AngklungTest")
        mainImage.isUserInteractionEnabled = true
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var mainImage: UIImageView!
    
    @IBAction func songsButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "MPC", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "MPCBoard") as! MPCViewController;
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

