//
//  RecentChatsTableViewCell.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class RecentChatsTableViewCell: UITableViewCell {

    @IBOutlet weak var view_first: UIView!
    @IBOutlet weak var view_second: UIView!
    @IBOutlet weak var view_third: UIView!
    @IBOutlet weak var view_forth: UIView!
    @IBOutlet weak var view_fifth: UIView!
    @IBOutlet weak var LBL3: UILabel!
    @IBOutlet weak var lbl1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        view_first.layer.cornerRadius = 2
        view_first.clipsToBounds = true
        view_second.layer.cornerRadius = 2
        view_second.clipsToBounds = true
        view_third.layer.cornerRadius = 2
        view_third.clipsToBounds = true
        view_forth.layer.cornerRadius = 2
        view_forth.clipsToBounds = true
        view_fifth.layer.cornerRadius = 2
        view_fifth.clipsToBounds = true
        
        LBL3.layer.cornerRadius = LBL3.frame.width/2
        LBL3.clipsToBounds = true
        lbl1.layer.cornerRadius = LBL3.frame.width/2
        lbl1.clipsToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
