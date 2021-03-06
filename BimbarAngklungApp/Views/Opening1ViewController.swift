//
//  Opening1ViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 27/06/21.
//

import UIKit

class Opening1ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func swipeScreen1(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Opening2") as! Opening2ViewController
        navigationController?.pushViewController(vc, animated: true)
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
