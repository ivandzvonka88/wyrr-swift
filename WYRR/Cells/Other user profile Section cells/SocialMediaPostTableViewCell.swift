//
//  SocialMediaPostTableViewCell.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class SocialMediaPostTableViewCell: UITableViewCell {

    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var img_name: UIImageView!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_secondTitle: UILabel!
    @IBOutlet weak var lbl_amount: UILabel!
    @IBOutlet weak var btn_buy: UIButton!
    @IBOutlet weak var img_title: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        btn_buy.layer.cornerRadius = 10
        btn_buy.clipsToBounds = true
        main_view.layer.cornerRadius = 10
        main_view.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
