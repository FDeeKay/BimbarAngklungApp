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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! LevelSelectionViewCell
        
        cell.levelSelectionImage.image = UIImage(named: levelSelectionImages[indexPath.row])
        cell.levelSelectionImage.layer.cornerRadius = 50.0
        return cell
    }
    
    
    var levelSelectionImages:[String] = ["song1","song2","song3"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
