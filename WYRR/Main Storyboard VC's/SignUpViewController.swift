//
//  SignUpViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit


class SignUpViewController: UIViewController {

    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var view_continue: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func text_back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
