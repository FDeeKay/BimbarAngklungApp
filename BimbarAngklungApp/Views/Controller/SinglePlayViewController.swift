//
//  SinglePlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Calista Nadia Irawan on 23/06/21.
//

import UIKit

class SinglePlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
//        override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
//            angklungSound.play()}
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
