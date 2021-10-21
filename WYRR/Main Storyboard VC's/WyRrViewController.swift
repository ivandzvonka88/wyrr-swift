//
//  WyRrViewController.swift
//  WYRR
//
//  Created by apple on 06/04/21.
//

import UIKit

class WyRrViewController: UIViewController {

    @IBOutlet weak var main_view: UIView!
    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var segment_view: UISegmentedControl!
    @IBOutlet weak var image_view: UIImageView!
    @IBOutlet weak var view_enterAmount: UIView!
    @IBOutlet weak var btn_send_money: UIButton!
    @IBOutlet weak var view_sendMoney: GradientView!
    
    @IBOutlet weak var btn_ReceiveMoney: UIButton!
    @IBOutlet weak var view_ReceiveMoney: GradientView!
    
    @IBOutlet weak var scroll_Money: UIScrollView!
    
    @IBOutlet weak var view_first: UIView!
    @IBOutlet weak var view_second: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view_sendMoney.clipsToBounds = false
        btn_send_money.clipsToBounds = false
        
        view_ReceiveMoney.clipsToBounds = false
        btn_ReceiveMoney.clipsToBounds = false
        
    }
    
    
    @IBAction func btn_sendClicked(_ sender: Any) {
        view_first.isHidden = true
        view_second.isHidden = false
        btn_send_money.setTitle("Confirm Contact", for: .normal)
    }
    
    @IBAction func btn_profile(_ sender: Any) {
        
//        self.performSegue(withIdentifier: "Profile", sender: self)
    }
    
    @IBAction func segment_view(_ sender: Any) {
        
        switch segment_view.selectedSegmentIndex {
            case 0:
                scroll_Money.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
//                image_view.image = #imageLiteral(resourceName: "Bitmap")
//                btn_send_money.setTitle("Send Money", for: .normal)
            case 1:
                scroll_Money.setContentOffset(CGPoint(x: self.view.frame.size.width - 32, y: 0), animated: true)
                
//                image_view.image = #imageLiteral(resourceName: "Bitmap2")
//                btn_send_money.setTitle("Receive Money", for: .normal)
            default:
                break;
            }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
          let detail = segue.destination as! ProfileViewController

    }
    

    

}

