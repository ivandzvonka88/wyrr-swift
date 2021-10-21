//
//  LedgerSearchViewController.swift
//  WYRR
//
//  Created by Gursewak singh on 14/04/21.
//

import UIKit

class LedgerSearchViewController: UIViewController {
    
    @IBOutlet weak var table_View: UITableView!
    @IBOutlet weak var text_search: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        table_View.register(UINib(nibName: "InviteTableViewCell", bundle: nil), forCellReuseIdentifier: "InviteTableViewCell")
        
        text_search.attributedPlaceholder = NSAttributedString(string: "Search...",
                                     attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3047263644)])
    }
    
    @IBAction func btn_back(_ sender: Any) {
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

extension LedgerSearchViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table_View.dequeueReusableCell(withIdentifier: "InviteTableViewCell") as! InviteTableViewCell
        cell.selectionStyle = .none
        
        for btn in cell.btn_invite{
            btn.isHidden = false
        }
        
        for btn in cell.btn_accept{
            btn.isHidden = true
        }
        
        for btn in cell.btn_decline{
            btn.isHidden = true
        }
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //        selectedRow = indexPath.row
        
        if (indexPath.row == 0) {
            self.performSegue(withIdentifier: "Other", sender: self)
            
        } else if (indexPath.row == 0) {
            self.performSegue(withIdentifier: "Other", sender: self)
            
        } else if (indexPath.row == 0) {
            self.performSegue(withIdentifier: "Other", sender: self)
            
        } else  if (indexPath.row == 0) {
            self.performSegue(withIdentifier: "Other", sender: self)
            
        } else  if (indexPath.row == 0) {
            self.performSegue(withIdentifier: "Other", sender: self)
            
        } else {
            
            
        }
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if(segue.identifier == "Other"){
            let detail = segue.destination as! OtrherUserprofileViewController
            
        } else {
            
            
            
            
        }
        
    }
    
    
    
    
}

