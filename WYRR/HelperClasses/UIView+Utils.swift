//
//  UIView+Utils.swift
//  User
//
//  Created by K A M L E S H on 01/02/19.
//  Copyright © 2019 K A M L E S H. All rights reserved.
//

import UIKit

// MARK: - UIView Extension
@IBDesignable
extension UIView {
    
    
//    func addGradientLayer() {
//
//        let gl: CAGradientLayer =  CAGradientLayer()
//        gl.colors = [ Color.theme1Color.cgColor, Color.theme2Color.cgColor]
//        gl.locations = [ 0.0, 1.0]
//        //                       gl.startPoint = CGPoint(x: 0.0, y: 1.0)
//        //                       gl.endPoint = CGPoint(x: 1.0, y: 1.0)
//        gl.frame = CGRect(x: 0.0, y: 0.0, width: self.frame.size.width, height: self.frame.size.height)
//
//
//        self.layer.insertSublayer(gl, at: 0)
//    }
    
    private struct AssociatedKey {
        static var rounded = "UIView.rounded"
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            return .clear
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return 0.0
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var rounded: Bool {
        get {
            if let rounded = objc_getAssociatedObject(self, &AssociatedKey.rounded) as? Bool {
                return rounded
            } else {
                return false
            }
        }
        set {
            objc_setAssociatedObject(self,
                                     &AssociatedKey.rounded,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            layer.cornerRadius = CGFloat(newValue ? 1.0 : 0.0) * min(bounds.width,
                                                                     bounds.height) / 2
        }
    }
    
    @IBInspectable var cornerRadiuss: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = true
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable var shadowColors: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
      layer.masksToBounds = false
      layer.shadowColor = color.cgColor
      layer.shadowOpacity = opacity
      layer.shadowOffset = offSet
      layer.shadowRadius = radius

      layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
      layer.shouldRasterize = true
      layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
}
