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
        super.viewDidAppear(true)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser(){
            // Show Onboarding
            let storyboard = UIStoryboard(name: "Opening", bundle: nil);
            let viewController = storyboard.instantiateViewController(withIdentifier: "Opening1") as! Opening1ViewController;
            self.navigationController?.pushViewController(viewController, animated: true)
        }
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

class Core {
    static let shared = Core()
    
    func isNewUser() -> Bool {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
 
    func setIsNotNewUser() {
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
    
}
