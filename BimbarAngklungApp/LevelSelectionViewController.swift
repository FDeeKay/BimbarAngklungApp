//
//  LevelSelectionViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 15/06/21.
//

import UIKit

class LevelSelectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return levelSelectionImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath)
            as! LevelSelectionViewCell
        
        cell2.levelSelectionImage.image = UIImage(named: levelSelectionImages[indexPath.row])
        cell2.levelSelectionImage.layer.cornerRadius = 50.0
        return cell2
    }
    
    
    var levelSelectionImages:[String] = ["song1","song2","song3"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
