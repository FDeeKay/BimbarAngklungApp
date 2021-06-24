//
//  SongSelectionTableViewCell.swift
//  BimbarAngklungApp
//
//  Created by Fabian Delano Kurnia on 17/06/21.
//

import UIKit

class SongSelectionTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var songSelectionImage: UIImageView!
    
    @IBOutlet weak var namaLagu: UILabel!

    @IBOutlet weak var pembuatLagu: UILabel!
    
    @IBOutlet weak var deskripsiLagu: UILabel!
    @IBOutlet weak var genreLagu: UILabel!
    
    @IBOutlet weak var kotakDalamCell: UIView!

    @IBOutlet weak var playTombol: UIButton!
    
    
    
}
