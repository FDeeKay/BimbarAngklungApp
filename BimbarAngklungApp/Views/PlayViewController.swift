//
//  PlayViewController.swift
//  BimbarAngklungApp
//
//  Created by Rima Cholilah on 24/06/21.
//

import UIKit

class PlayViewController: UIViewController {

    @IBOutlet weak var labelNot: UILabel!

        var myNot : String = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            labelNot.text = ""
            labelNot.text = " \(myNot)"
            
        let size:CGFloat = 30.0 // 35.0 chosen arbitrarily

        labelNot.bounds = CGRect(x: 0.0, y: 0.0, width: size, height: size)
        labelNot.layer.cornerRadius = size / 2
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
