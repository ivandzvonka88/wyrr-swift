//
//  TappTableViewCell.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class TappTableViewCell: UITableViewCell {

    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var img_view: UIImageView!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var img_main: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        main_view.layer.cornerRadius = 10
        main_view.clipsToBounds = true
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
