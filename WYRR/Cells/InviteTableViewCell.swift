//
//  InviteTableViewCell.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class InviteTableViewCell: UITableViewCell {

    @IBOutlet weak var view_first: UIView!
    @IBOutlet weak var view_second: UIView!
    @IBOutlet weak var view_third: UIView!
    @IBOutlet weak var view_fifth: UIView!
    @IBOutlet weak var view_forth: UIView!
    @IBOutlet var btn_invite: [UIButton]!
    @IBOutlet var btn_accept: [UIButton]!
    @IBOutlet var btn_decline: [UIButton]!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view_first.layer.cornerRadius = 10
        view_first.clipsToBounds = true
        view_second.layer.cornerRadius = 10
        view_second.clipsToBounds = true
        view_third.layer.cornerRadius = 10
        view_third.clipsToBounds = true
        view_forth.layer.cornerRadius = 10
        view_forth.clipsToBounds = true
        view_fifth.layer.cornerRadius = 10
        view_fifth.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
