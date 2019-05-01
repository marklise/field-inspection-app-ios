//
//  UIImageView.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

import UIKit

extension UIImageView {

    @objc func setShadow() {
    
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.tableCellShadow.cgColor
        self.layer.shadowOffset = CGSize(width: 0,height: 1)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 1.0
    }
}
