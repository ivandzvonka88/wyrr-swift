//
//  ContractCompletedTableViewCell.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class ContractCompletedTableViewCell: UITableViewCell {

    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var btn_pending: UIButton!
    @IBOutlet weak var stack_dropdown: UIStackView!
    @IBOutlet weak var btn_complete: UIButton!
    @IBOutlet weak var btn_cancel: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        main_view.layer.cornerRadius = 10
        main_view.clipsToBounds = true
        stack_dropdown.isHidden = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func btn_pendingClicked(_ sender: UIButton) {
        stack_dropdown.isHidden = false
        btn_complete.setTitle(btn_pending.currentTitle == "Pending" ? "Complete" : "Pending", for: .normal)
    }
    
    @IBAction func btn_complete(_ sender: UIButton) {
        
        btn_pending.setTitle(btn_complete.currentTitle, for: .normal)
        stack_dropdown.isHidden = true
        
    }
    
    @IBAction func btn_cancel(_ sender: UIButton) {
        btn_pending.setTitle("Cancelled", for: .normal)
        stack_dropdown.isHidden = true
    }
    
}
