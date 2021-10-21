//
//  ContractViewController.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class ContractViewController: UIViewController {
    
    @IBOutlet weak var table_view: UITableView!
    @IBOutlet weak var view_segment: UISegmentedControl!
    
    var selectedRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table_view.separatorStyle = .none
        
        self.table_view.register(UINib(nibName: "ContractCompletedTableViewCell", bundle: nil), forCellReuseIdentifier: "ContractCompletedTableViewCell")
    }
    
    @IBAction func btn_segment(_ sender: Any) {
        
        self.table_view.reloadData()
    }
    
    
    @IBAction func btn_back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
}

extension ContractViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let selectedIndex = self.view_segment.selectedSegmentIndex
        switch selectedIndex
        {
        case 0:
            return 1
            
        case 1:
            return 5
            
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let selectedIndex = self.view_segment.selectedSegmentIndex
        switch selectedIndex
        {
        case 0:
            let cell = table_view.dequeueReusableCell(withIdentifier: "ContractCompletedTableViewCell") as! ContractCompletedTableViewCell
            cell.selectionStyle = .none
            cell.btn_pending.isHidden = false
            return cell
            
        case 1:
            let cell = table_view.dequeueReusableCell(withIdentifier: "ContractCompletedTableViewCell") as! ContractCompletedTableViewCell
            cell.selectionStyle = .none
            cell.btn_pending.isHidden = true
            
            return cell
            
            
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //        selectedRow = indexPath.row
        
        if (indexPath.row == 0) {
            self.performSegue(withIdentifier: "Detail", sender: self)
            
        } else {
            
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let selectedIndex = self.view_segment.selectedSegmentIndex
        switch selectedIndex
        {
        case 0:
            let deleteAction = UIContextualAction(style: .destructive, title: nil) { [weak self] (action, view, completion) in
                // weak self to prevent memory leak if needed
                guard self != nil else { return }
                
                // do your nasty stuff here
                
                completion(true)
            }
            
            let acceptAction = UIContextualAction(style: .destructive, title: nil) { [weak self] (action, view, completion) in
                // weak self to prevent memory leak if needed
                guard self != nil else { return }
                
                // do your nasty stuff here
                
                completion(true)
            }
            
            deleteAction.backgroundColor = UIColor(white: 1, alpha: 0)
            deleteAction.image = UIImage(named: "Reject.png")
            
            acceptAction.backgroundColor = UIColor(white: 1, alpha: 0)
            acceptAction.image = UIImage(named: "Accept.png")
            
            return UISwipeActionsConfiguration(actions: [deleteAction, acceptAction])
        default:
            return nil
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if(segue.identifier == "Detail"){
            let detail = segue.destination as! ContractDetailsViewController
            
            
            
            
        } else {
            
            
            
            
        }
        
    }
    
}

