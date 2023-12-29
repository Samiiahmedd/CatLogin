//
//  Extentions.swift
//  CatLogin
//
//  Created by Sami Ahmed on 30/12/2023.
//

import UIKit
import Foundation

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get{return self.cornerRadius}
        set {
            self.layer.cornerRadius = newValue
        }
    }
    @IBInspectable var shadowColor: UIColor {
        get { return UIColor(cgColor: layer.shadowColor ?? UIColor.clear.cgColor) }
        set { layer.shadowColor = newValue.cgColor }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get { return layer.shadowOpacity }
        set { layer.shadowOpacity = newValue }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }
}


