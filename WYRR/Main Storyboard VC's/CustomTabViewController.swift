//
//  CustomTabViewController.swift
//  WYRR
//
//  Created by Gursewak singh on 12/04/21.
//

import UIKit

class CustomTabViewController: UITabBarController {

    let layerGradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        layerGradient.colors = [#colorLiteral(red: 0.7258194089, green: 0.2274176478, blue: 0.6532537341, alpha: 1).cgColor, #colorLiteral(red: 1, green: 0.495049417, blue: 0.5157351494, alpha: 1).cgColor]
        layerGradient.startPoint = CGPoint(x: 0, y: 0)
        layerGradient.endPoint = CGPoint(x: 1, y: 0)
        layerGradient.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        self.tabBar.layer.insertSublayer(layerGradient, at:0)
        //self.tabBar.layer.addSublayer(layerGradient)
    
        
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.8509055972, green: 0.851028502, blue: 0.8508779407, alpha: 1)
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
