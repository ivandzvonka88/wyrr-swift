//
//  AccountHistoryTableViewCell.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class AccountHistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var view_fund: UIView!
    @IBOutlet weak var view_addfund: UIView!
    @IBOutlet weak var view_addedfund: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        view_fund.layer.cornerRadius = 10
        view_fund.clipsToBounds = true
        view_addfund.layer.cornerRadius = 10
        view_addfund.clipsToBounds = true
        view_addedfund.layer.cornerRadius = 10
        view_addedfund.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
