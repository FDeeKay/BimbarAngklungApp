//
//  NotSelectedViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 23/06/21.
//

import UIKit

class NotSelectedViewController: UIViewController {
    @IBOutlet weak var NextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NextButton.layer.cornerRadius = 20
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        // Do any additional setup after loading the view.
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
