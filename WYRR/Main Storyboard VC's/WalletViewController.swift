//
//  WalletViewController.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class WalletViewController: UIViewController {

    @IBOutlet weak var table_view: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.table_view.separatorStyle = .none
    
        self.table_view.register(UINib(nibName: "GraphTableViewCell", bundle: nil), forCellReuseIdentifier: "GraphTableViewCell")
        self.table_view.register(UINib(nibName: "DigitalWalletsTableViewCell", bundle: nil), forCellReuseIdentifier: "DigitalWalletsTableViewCell")
        self.table_view.register(UINib(nibName: "AccountHistoryTableViewCell", bundle: nil), forCellReuseIdentifier: "AccountHistoryTableViewCell")

        
    }

}

extension WalletViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row == 0) {
            
            let cell = table_view.dequeueReusableCell(withIdentifier: "GraphTableViewCell") as! GraphTableViewCell
            cell.selectionStyle = .none
            
            cell.addMoneyAction = {
                self.performSegue(withIdentifier: "addMoney", sender: self)
            }
            
            cell.exchangeAction = {
                
                self.performSegue(withIdentifier: "exchange", sender: self)
            }
            
            return cell
            
        } else if (indexPath.row == 1) {
            
            let cell = table_view.dequeueReusableCell(withIdentifier: "DigitalWalletsTableViewCell") as! DigitalWalletsTableViewCell
            cell.selectionStyle = .none
            
            return cell
            
        } else if (indexPath.row == 2) {
            
            let cell = table_view.dequeueReusableCell(withIdentifier: "AccountHistoryTableViewCell") as! AccountHistoryTableViewCell
            cell.selectionStyle = .none
            
            return cell
            
        } else {
            
            let cell = table_view.dequeueReusableCell(withIdentifier: "ContractCompletedTableViewCell") as! ContractCompletedTableViewCell
            cell.selectionStyle = .none
            
            return cell
            
        }
    }
    
    
    
    
    
    
}
