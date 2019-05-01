//
//  UIView.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import Foundation
import UIKit
extension UIView {
    
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let parentResponder = parentResponder as? UIViewController {
                return parentResponder
            }
        }
        return nil
    }
}

