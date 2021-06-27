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
        cell.namaLagu.text = nama2Lagu[indexPath.row]
        cell.pembuatLagu.text = pembuat2Lagu[indexPath.row]
        cell.deskripsiLagu.text = deskripsi2Lagu[indexPath.row]
        cell.genreLagu.text = genre2Lagu[indexPath.row]
        cell.kotakDalamCell.layer.cornerRadius = 10
        cell.layer.cornerRadius = 10
        cell.playTombol.layer.cornerRadius = 10
        cell.playTombol.layer.borderWidth = 1
        cell.playTombol.layer.borderColor = UIColor.init(red: 40.0/255.0, green: 67.0/255.0, blue: 61.0/255.0, alpha: 1).cgColor
        cell.songSelectionImage.layer.cornerRadius = 10
        
        cell.isUserInteractionEnabled = nama2Lagu[indexPath.row] == "Suwe Ora Jamu"
        
        if nama2Lagu[indexPath.row] != "Suwe Ora Jamu"{
            cell.kotakDalamCell.layer.backgroundColor = UIColor.gray.cgColor
            cell.kotakDalamCell.layer.opacity = 0.5
        }
                
                return cell

    }
    
    
    var modeChosen:String = ""
    
    @IBOutlet weak var imageCell: SongSelectionTableViewCell!
    
    
    
    @IBAction func playButton(_ sender: Any) {
        if modeChosen == "SinglePlayer" {
            let storyboard = UIStoryboard(name: "NewPlayScreen", bundle: nil);
            let viewController = storyboard.instantiateViewController(withIdentifier: "NewPlayScreen")
            self.navigationController?.pushViewController(viewController, animated: true)
        } else {
            let storyboard = UIStoryboard(name: "MPC", bundle: nil);
            let viewController = storyboard.instantiateViewController(withIdentifier: "MPCBoard")
            self.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        selectSongTable.delegate = self
        selectSongTable.dataSource = self
        
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var selectSongTable: UITableView!
    
    var songSelectionImages:[String] = ["song1","song2","song3"]

    // UNTUK BUAT LAGUNYA, DETAIL LAGUNYA, NANTI BISA KIRIM TITLE NYA KE PILIH NOT LALU KE PLAY SCREEN
    var songList: [Song] = [
        Song(title: "Yamko Rambe Yamko", duration: 120, arrNot: ["C","D","E","F"], arrDuration: [3,10,15,10], arrImage: ["imageC", "imageD"])
        // title nama lagunya, duration panjang lagu, arrNot untuk kunci apa saja yang ada di lagu tersebut, arrDuration adalah berapa lama setiap kunci tersebut dimainkan sebelum pindah ke kunci berikutnya, arrImage untuk gambar hand gesture nya
    ]
    
    var nama2Lagu:[String] = ["Suwe Ora Jamu", "Yamko Rambe Yamko", "Halo Halo Bandung"]
    
    var pembuat2Lagu:[String] = ["R.C. Hardjosubroto", "Unknown", "Ismail Marzuki"]
    
    var deskripsi2Lagu:[String] = ["Lagu suwe ora jamu diciptakan oleh R.C. Hardjosubroto. Lagu ini merupakan lagu daerah jawa yang bercerita tentang pertemuan kembali setelah sekkian lama. Alat musik daerah yang digunakan beragam dan bisa dipadupadankan menajdi satu untuk mengiringi lagu ini.", "This song is currently locked. Be on the lookout for future updates", "This song is currently locked. Be on the lookout for future updates"]
    
    var genre2Lagu:[String] = ["Lagu Daerah", "Lagu Daerah", "Lagu Nasional"]
}
