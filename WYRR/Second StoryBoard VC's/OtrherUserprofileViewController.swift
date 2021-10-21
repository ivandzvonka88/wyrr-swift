//
//  OtrherUserprofileViewController.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit

class OtrherUserprofileViewController: UIViewController {

    @IBOutlet weak var table_view: UITableView!
    @IBOutlet weak var view_segment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.table_view.separatorStyle = .none
    
        self.table_view.register(UINib(nibName: "SocialMediaPostTableViewCell", bundle: nil), forCellReuseIdentifier: "SocialMediaPostTableViewCell")
        
    }
    
    @IBAction func btn_segment(_ sender: Any) {
        self.table_view.reloadData()
    }
    
    @IBAction func btn_back(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    

}

extension OtrherUserprofileViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let selectedIndex = self.view_segment.selectedSegmentIndex
            switch selectedIndex
            {
            case 0:
                return 2
                
            case 1:
                return 2
                
            default:
                return 0
            }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedIndex = self.view_segment.selectedSegmentIndex
           switch selectedIndex
           {
           case 0:
            let cell = table_view.dequeueReusableCell(withIdentifier: "SocialMediaPostTableViewCell") as! SocialMediaPostTableViewCell
            cell.selectionStyle = .none
            
            cell.lbl_title.text = "Selling 10 Ethereum"
            cell.lbl_name.text = "Megan Pearson"
            cell.img_name.image = #imageLiteral(resourceName: "Oval 6")
            cell.img_title.image = #imageLiteral(resourceName: "Rectangle tap")
            cell.lbl_amount.text = "$90"
            cell.lbl_secondTitle.text = "Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit."

            return cell
            
        case 1:
            let cell = table_view.dequeueReusableCell(withIdentifier: "SocialMediaPostTableViewCell") as! SocialMediaPostTableViewCell
            cell.selectionStyle = .none
            
            cell.lbl_title.text = "Selling 20 litecoins"
            cell.lbl_name.text = "Richard Boyd"
            cell.img_name.image = #imageLiteral(resourceName: "Ovalnew1")
            cell.img_title.image = #imageLiteral(resourceName: "new")
            cell.lbl_amount.text = "$200"
            cell.lbl_secondTitle.text = "Mauris non tempor quam, et lacinia sapien. Mauris accumsan eros eget libero posuere vulputate. Etiam elit elit."

            return cell
            
            
           default:
               return UITableViewCell()
           }
    }
    
    
    
    
    
}

  
