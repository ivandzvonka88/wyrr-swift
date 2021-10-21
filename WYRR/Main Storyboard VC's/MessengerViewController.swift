//
//  MessengerViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class MessengerViewController: UIViewController, EPPickerDelegate{
    
    @IBOutlet weak var table_view: UITableView!
    @IBOutlet weak var view_search: UIView!
    @IBOutlet weak var view_segment: UISegmentedControl!
    @IBOutlet weak var btn_contact: UIButton!
    
    @IBOutlet weak var text_search: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text_search.returnKeyType  = .search
        text_search.attributedPlaceholder = NSAttributedString(string: "Search...",
                                     attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.3047263644)])
        
        self.table_view.separatorStyle = .none
        
        self.table_view.register(UINib(nibName: "RecentChatsTableViewCell", bundle: nil), forCellReuseIdentifier: "RecentChatsTableViewCell")
        self.table_view.register(UINib(nibName: "InviteTableViewCell", bundle: nil), forCellReuseIdentifier: "InviteTableViewCell")
        
    }
    
    @IBAction func view_segment(_ sender: Any) {
        self.table_view.reloadData()
        
    }
    
    
    @IBAction func btn_contactClicked(_ sender: Any) {
//        let contactPickerScene = EPContactsPicker(delegate: self, multiSelection:true, subtitleCellType: SubtitleCellValue.email)
//        let navigationController = UINavigationController(rootViewController: contactPickerScene)
//        self.present(navigationController, animated: true, completion: nil)
    }
    
    
    
}

extension MessengerViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let selectedIndex = self.view_segment.selectedSegmentIndex
        switch selectedIndex
        {
        case 0:
            let cell = table_view.dequeueReusableCell(withIdentifier: "RecentChatsTableViewCell") as! RecentChatsTableViewCell
            cell.selectionStyle = .none
            
            return cell
        case 1:
            
            let cell = table_view.dequeueReusableCell(withIdentifier: "InviteTableViewCell") as! InviteTableViewCell
            cell.selectionStyle = .none
            
            for btn in cell.btn_invite{
                btn.isHidden = true
            }
            
            for btn in cell.btn_accept{
                btn.isHidden = false
            }
            
            for btn in cell.btn_decline{
                btn.isHidden = false
            }
            
            return cell
        default:
            return UITableViewCell()
        }
        
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
