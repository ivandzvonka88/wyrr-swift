//
//  HubViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class HubViewController: UIViewController {

    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var view_first: UIView!
    @IBOutlet weak var view_second: UIView!
    @IBOutlet weak var view_third: UIView!
    @IBOutlet weak var view_forth: UIView!
    @IBOutlet weak var view_fifth: UIView!
    @IBOutlet weak var view_sixth: UIView!
    @IBOutlet weak var view_contact: UIView!
    @IBOutlet weak var view_p2p: UIView!
    @IBOutlet weak var view_stake: UIView!
    @IBOutlet weak var view_give: UIView!
    @IBOutlet weak var view_verify: UIView!
    @IBOutlet weak var view_connect: UIView!
    
    @IBOutlet weak var btn_grid: UIButton!
    
    @IBOutlet weak var view_grid: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view_grid.isHidden = true

//        view_first.layer.cornerRadius = 10
//        view_first.clipsToBounds = true
//        view_second.layer.cornerRadius = 10
//        view_second.clipsToBounds = true
//        view_third.layer.cornerRadius = 10
//        view_third.clipsToBounds = true
//        view_forth.layer.cornerRadius = 10
//        view_forth.clipsToBounds = true
//        view_fifth.layer.cornerRadius = 10
//        view_fifth.clipsToBounds = true
//        view_sixth.layer.cornerRadius = 10
//        view_sixth.clipsToBounds = true
//        
//        view_contact.layer.cornerRadius = 10
//        view_contact.clipsToBounds = true
//        view_p2p.layer.cornerRadius = 10
//        view_p2p.clipsToBounds = true
//        view_stake.layer.cornerRadius = 10
//        view_stake.clipsToBounds = true
//        view_give.layer.cornerRadius = 10
//        view_give.clipsToBounds = true
//        view_verify.layer.cornerRadius = 10
//        view_verify.clipsToBounds = true
//        view_connect.layer.cornerRadius = 10
//        view_connect.clipsToBounds = true
//        
        
    }
    
    @IBAction func btn_grid(_ sender: Any) {
        
        if view_grid.isHidden {
            
            view_grid.isHidden = false
            view_first.isHidden = true
            view_second.isHidden = true
            view_third.isHidden = true
            view_forth.isHidden = true
            view_fifth.isHidden = true
            view_sixth.isHidden = true
            btn_grid.setImage(UIImage(named: "list (1).png"), for: .normal)
            
            } else {
                view_grid.isHidden = true
                view_first.isHidden = false
                view_second.isHidden = false
                view_third.isHidden = false
                view_forth.isHidden = false
                view_fifth.isHidden = false
                view_sixth.isHidden = false
              
                btn_grid.setImage(UIImage(named: "grid.png"), for: .normal)
                
            }
        
//        if btn_grid.isSelected {
//            btn_grid.setImage(UIImage(named: "list(1).png"), for: .normal)
//            view_grid.isHidden = false
//
//        }
//            else {
//                btn_grid.setImage(UIImage(named: "grid.png"), for: .normal)
//                view_grid.isHidden = true
//            }
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
