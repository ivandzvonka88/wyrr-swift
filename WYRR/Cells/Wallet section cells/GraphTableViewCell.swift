//
//  GraphTableViewCell.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class GraphTableViewCell: UITableViewCell {

    var addMoneyAction : (() -> ())?
    var exchangeAction : (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func btn_addMoney(_ sender: Any) {
        addMoneyAction?()
    }
    
    @IBAction func btn_exchange(_ sender: Any) {
        exchangeAction?()
    }
}
