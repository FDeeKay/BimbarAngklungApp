//
//  SelectSongViewController.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 17/06/21.
//

import UIKit

class SelectSongViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songSelectionImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                    as! SongSelectionTableViewCell
                
                cell.songSelectionImage.image = UIImage(named: songSelectionImages[indexPath.row])
                
                return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        selectSongTable.delegate = self
        selectSongTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var selectSongTable: UITableView!
    
    var songSelectionImages:[String] = ["song1","song2","song3"]


}
