//
//  OtpViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class OtpViewController: UIViewController {
    
    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var main_view: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn_back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
