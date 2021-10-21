//
//  TappViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class TappViewController: UIViewController {

    @IBOutlet weak var view_segment: UISegmentedControl!
    
    @IBOutlet weak var table_view: UITableView!
    
    @IBOutlet weak var btn_plus: UIButton!
    
    //    MARK : Feed section variables
    
    var nameatitle = ["Richard Boyd", "Megan Pearson"]
    var title2 =  ["Megan Pearson","Want to send 10 litcoins for $200"]
    var imageMain = [ #imageLiteral(resourceName: "Screenshot 2021-04-06 at 3.04.11 PM"), #imageLiteral(resourceName: "Oval 9") ]
//    var imagetitle = [ #imageLiteral(resourceName: "Rectangle new"), #imageLiteral(resourceName: " new 2") ]
    
//    MARK : My Feed section variables
    
    var name = ["Richard Boyd","Megan Pearson"]
    var titlemain = ["Selling 20 litecoins","Selling 10 Ethereum"]
    var ImageTitle = [ #imageLiteral(resourceName: "new") ,#imageLiteral(resourceName: "Rectangle tap") ]
    var ImageName =  [ #imageLiteral(resourceName: "Ovalnew1") ,#imageLiteral(resourceName: "Oval 6") ]
    var amount =  ["$200","$90"]
  

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table_view.separatorStyle = .none
    
        self.table_view.register(UINib(nibName: "TappTableViewCell", bundle: nil), forCellReuseIdentifier: "TappTableViewCell")
        self.table_view.register(UINib(nibName: "SocialMediaPostTableViewCell", bundle: nil), forCellReuseIdentifier: "SocialMediaPostTableViewCell")
        self.table_view.register(UINib(nibName: "MyFeedAddFeedTableViewCell", bundle: nil), forCellReuseIdentifier: "MyFeedAddFeedTableViewCell")

        
        
    }
    
    @IBAction func segment_click(_ sender: Any) {
        
        self.table_view.reloadData()
    }
    
    @IBAction func btn_plus(_ sender: Any) {

    }
    

}

extension TappViewController : UITableViewDelegate,UITableViewDataSource {
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
            let cell = table_view.dequeueReusableCell(withIdentifier: "TappTableViewCell") as! TappTableViewCell
            cell.selectionStyle = .none
            
//            cell.img_view.image = imagetitle[indexPath.row]
            cell.lbl_title.text = title2[indexPath.row]
            cell.lbl_name.text = nameatitle[indexPath.row]
            cell.img_main.image = imageMain[indexPath.row]

            return cell
            
        case 1:
           

            let cell = table_view.dequeueReusableCell(withIdentifier: "SocialMediaPostTableViewCell") as! SocialMediaPostTableViewCell
            cell.selectionStyle = .none

            cell.lbl_name.text = name[indexPath.row]
            cell.lbl_title.text = titlemain[indexPath.row]
            cell.lbl_amount.text = amount[indexPath.row]
            cell.img_name.image = ImageName[indexPath.row]
            cell.img_title.image = ImageTitle[indexPath.row]


            return cell
            
            
           default:
               return UITableViewCell()
           }
    }
    
  
    
    
    
    
    
}
