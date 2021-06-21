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
    
    @IBAction func playButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewController = storyboard.instantiateViewController(withIdentifier: "PickNot")
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        selectSongTable.delegate = self
        selectSongTable.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var selectSongTable: UITableView!
    
    var songSelectionImages:[String] = ["song1","song2","song3"]

    // UNTUK BUAT LAGUNYA, DETAIL LAGUNYA, NANTI BISA KIRIM TITLE NYA KE PILIH NOT LALU KE PLAY SCREEN
    var songList: [Song] = [
        Song(title: "Yamko Rambe Yamko", duration: 120, arrNot: ["C","D","E","F"], arrDuration: [3,10,15,10], arrImage: ["imageC", "imageD"])
        // title nama lagunya, duration panjang lagu, arrNot untuk kunci apa saja yang ada di lagu tersebut, arrDuration adalah berapa lama setiap kunci tersebut dimainkan sebelum pindah ke kunci berikutnya, arrImage untuk gambar hand gesture nya
    ]
}