//
//  DigitalWalletsTableViewCell.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class DigitalWalletsTableViewCell: UITableViewCell {

    @IBOutlet weak var view_bitcoin: UIView!
    @IBOutlet weak var view_litecoin: UIView!
    @IBOutlet weak var view_ethereum: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        view_bitcoin.layer.cornerRadius = 10
        view_bitcoin.clipsToBounds = true
        view_litecoin.layer.cornerRadius = 10
        view_litecoin.clipsToBounds = true
        view_ethereum.layer.cornerRadius = 10
        view_ethereum.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
