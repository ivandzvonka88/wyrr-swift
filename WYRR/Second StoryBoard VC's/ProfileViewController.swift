//
//  ProfileViewController.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var img_available: UIImageView!
    @IBOutlet weak var lbl_free: UILabel!
    @IBOutlet weak var view_free: UIView!
    @IBOutlet weak var btn_pro: UIButton!
    @IBOutlet weak var constaint_freeLeft: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        img_available.layer.cornerRadius = img_available.frame.width/2
        img_available.clipsToBounds = true
    }
    @IBAction func btn_back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btn_proClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        if sender.isSelected{
            view_free.backgroundColor = .green
            constaint_freeLeft.constant = 16
            lbl_free.text = "Pro"
        }else{
            view_free.backgroundColor = .white
            constaint_freeLeft.constant = 0
            lbl_free.text = "Free"
        }
        
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
