//
//  MyFeedsTableViewCell.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class MyFeedsTableViewCell: UITableViewCell {

    @IBOutlet weak var btn_buy: UIButton!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_title: UILabel!
    @IBOutlet weak var lbl_amount: UILabel!
    @IBOutlet weak var img_title: UIImageView!
    @IBOutlet weak var img_name: UIImageView!
    @IBOutlet weak var lbl_second_title: UILabel!
    @IBOutlet weak var main_view: UIView!
    
    
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
