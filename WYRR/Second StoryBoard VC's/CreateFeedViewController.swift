//
//  CreateFeedViewController.swift
//  WYRR
//
//  Created by apple on 07/04/21.
//

import UIKit
import MobileCoreServices


class CreateFeedViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var scroll_view: UIScrollView!
    @IBOutlet weak var view_segment: UISegmentedControl!
    @IBOutlet weak var view_first: UIView!
    @IBOutlet weak var view_second: UIView!
    @IBOutlet weak var view_fifth: UIView!
    @IBOutlet weak var view_third: UIView!
    @IBOutlet weak var view_sixth: UIView!
    @IBOutlet weak var view_forth: UIView!
    @IBOutlet weak var view_button: UIView!
    @IBOutlet weak var view_forSale: UIView!
    @IBOutlet weak var view_listThem: UIView!
    @IBOutlet weak var view_services: UIView!
    @IBOutlet weak var view_ForSaleListServices: UIView!
    
    @IBOutlet weak var btn_switch: UISwitch!
    @IBOutlet weak var lbl_lockFeed: UILabel!
    @IBOutlet weak var btn_forsale: UIButton!
    @IBOutlet weak var btn_listThem: UIButton!
    @IBOutlet weak var btn_services: UIButton!
    @IBOutlet weak var image_view: UIImageView!
    
    @IBOutlet weak var constraint_priceTop: NSLayoutConstraint!
    @IBOutlet weak var constraint_price: NSLayoutConstraint!
    
    var imagePicker = UIImagePickerController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view_ForSaleListServices.isHidden = true
       
        view_first.layer.cornerRadius = 10
        view_first.clipsToBounds = true
        view_second.layer.cornerRadius = 10
        view_second.clipsToBounds = true
        view_third.layer.cornerRadius = 10
        view_third.clipsToBounds = true
        view_forth.layer.cornerRadius = 10
        view_forth.clipsToBounds = true
        view_fifth.layer.cornerRadius = 10
        view_fifth.clipsToBounds = true
        view_sixth.layer.cornerRadius = 10
        view_sixth.clipsToBounds = true
        view_button.layer.cornerRadius = 10
        view_button.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if(btn_switch.isOn){
            self.constraint_price.constant = 80
            self.constraint_priceTop.constant = 16
        }else{
            self.constraint_price.constant = 0
            self.constraint_priceTop.constant = 0
        }
    }
    
    @IBAction func btn_back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btn_addImage(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                  print("Button capture")

                  imagePicker.delegate = self
                  imagePicker.sourceType = .savedPhotosAlbum
                  imagePicker.allowsEditing = false

                  present(imagePicker, animated: true, completion: nil)
              }

         
    }
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
        self.dismiss(animated: true, completion: { () -> Void in

        })
        
        image_view.image = image

        
    }
    
    @IBAction func btn_segment(_ sender: Any) {
        
        let selectedIndex = self.view_segment.selectedSegmentIndex
            switch selectedIndex
            {
            case 0:
                view_ForSaleListServices.isHidden = true
                lbl_lockFeed.isHidden = false
                btn_switch.isHidden = false
                
            case 1:
                view_ForSaleListServices.isHidden = false
                lbl_lockFeed.isHidden = true
                btn_switch.isHidden = true
                
            default:
                
                print("noview")
                
            }
        
        
    }
    
    @IBAction func btn_lockFeedClicked(_ sender: UISwitch) {
        if(sender.isOn){
            self.constraint_price.constant = 80
            self.constraint_priceTop.constant = 16
        }else{
            self.constraint_price.constant = 0
            self.constraint_priceTop.constant = 0
        }
    }
    
    @IBAction func btn_forSale(_ sender: Any) {
        
        if btn_forsale.isSelected {
            
            btn_listThem.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
            btn_services.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
            btn_forsale.setImage(UIImage(named: "Rectangle.png"), for: .normal)
            
        }
            else {
                
                btn_listThem.setImage(UIImage(named: "Rectangle.png"), for: .normal)
                btn_services.setImage(UIImage(named: "Rectangle.png"), for: .normal)
                btn_forsale.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
                
            }
        
    }
    
    @IBAction func btn_listThem(_ sender: Any) {
        
        if btn_listThem.isSelected {
            
            btn_forsale.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
            btn_services.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
            btn_listThem.setImage(UIImage(named: "Rectangle.png"), for: .normal)
            
        }
            else {
                
                btn_forsale.setImage(UIImage(named: "Rectangle.png"), for: .normal)
                btn_services.setImage(UIImage(named: "Rectangle.png"), for: .normal)
                btn_listThem.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
                
            }
    }
    
    @IBAction func btn_services(_ sender: Any) {
        
        if btn_services.isSelected {
            
            btn_forsale.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
            btn_services.setImage(UIImage(named: "Rectangle.png"), for: .normal)
            btn_listThem.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
            
        }
            else {
                
                btn_forsale.setImage(UIImage(named: "Rectangle.png"), for: .normal)
                btn_services.setImage(UIImage(named: "Rectangle2.png"), for: .normal)
                btn_listThem.setImage(UIImage(named: "Rectangle.png"), for: .normal)
                
            }
        
    }
}
//extension CreateFeedViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//
//    func FromGallery() -> Void {
//
//        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
//            let Picker = UIImagePickerController()
//            Picker.delegate = self
//            Picker.sourceType = .photoLibrary
//            Picker.modalPresentationStyle = .overFullScreen
//            self.present(Picker, animated: true, completion: nil)
//            Picker.allowsEditing = true
//            Picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
//        }
//
//    }
//
//    func FromCamera() -> Void {
//
//        if UIImagePickerController.isSourceTypeAvailable(.camera){
//            if AVCaptureDevice.authorizationStatus(for: .video) ==  .authorized {
//                //already authorized
//
//
//                let Picker = UIImagePickerController()
//                Picker.delegate = self
//                Picker.sourceType = .camera
//                Picker.mediaTypes = [kUTTypeImage as String]
//                Picker.modalPresentationStyle = .overFullScreen
//                self.present(Picker, animated: true, completion: nil)
//                Picker.allowsEditing = true
//                Picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
//
//            } else {
//                AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted: Bool) in
//                    if granted {
//                        //access allowed
//
//                        let Picker = UIImagePickerController()
//                        Picker.delegate = self
//                        Picker.sourceType = .camera
//                        Picker.mediaTypes = [kUTTypeImage as String]
//                        Picker.modalPresentationStyle = .overFullScreen
//                        self.present(Picker, animated: true, completion: nil)
//                        Picker.allowsEditing = true
//                        Picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
//
//                    } else {
//                        //access denied
//                        let alert = UIAlertController(
//                            title: "IMPORTANT",
//                            message: "Camera access required for capturing photos!",
//                            preferredStyle: UIAlertController.Style.alert
//                        )
//                        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
//                        alert.addAction(UIAlertAction(title: "Allow Camera", style: .cancel, handler: { (alert) -> Void in
//                            //UIApplication.shared.openURL(URL(string: UIApplication.UIApplicationOpenSettingsURLString)!)
//                            UIApplication.shared.openURL(URL(string: UIApplication.openSettingsURLString)!)
//                        }))
//                        self.present(alert, animated: true, completion: nil)
//                    }
//                })
//            }
//
//        }
//    }
//
//    func imagePickerController(_ picker: UIImagePickerController,didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
//    {
//
//        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
//            self.img_selected.contentMode = .scaleAspectFit
//                self.img_selected.image = pickedImage
//            }
//
//        //        let imageURL = info[UIImagePickerControllerReferenceURL] as! NSURL
//        //        let imageName = imageURL.lastPathComponent
//        //        print(imageName ?? "")
//        if let url = info[UIImagePickerController.InfoKey(rawValue: UIImagePickerController.InfoKey.imageURL.rawValue)] as? URL {
//                print(url.lastPathComponent)
//            if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
//                self.imageDate = convertImageToBase64String(img: pickedImage)
//            }
//
//
//
////            lbl_imgName.text = url.lastPathComponent
////                fileType = url.pathExtension
//        }else{
//            let alert = UIAlertController(title: "Oops!", message: "Please select valid image", preferredStyle: UIAlertController.Style.alert)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }
//        //myImage.contentMode = .scaleAspectFit //2
//        //myImage.image = chosenImage //3
//        dismiss(animated:true, completion: nil) //4
//
//    }
//
//    func convertImageToBase64String (img: UIImage) -> String {
//        return img.jpegData(compressionQuality: 0.1)?.base64EncodedString() ?? ""
//    }
//
//}
//
