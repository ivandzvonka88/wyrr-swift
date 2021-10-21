//
//  ContractDetailsViewController.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class ContractDetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btn_back(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
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
