//
//  LogInViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var view_logIn: UIView!
    @IBOutlet weak var btn_login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view_logIn.clipsToBounds = false
        btn_login.clipsToBounds = false
        
    }
    

    
    
}
