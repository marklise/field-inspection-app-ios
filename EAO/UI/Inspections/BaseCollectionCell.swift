//
//  BaseCollectionCell.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import Foundation

class BaseCollectionCell: UICollectionViewCell {
    
    func styleContainer(view: CALayer) {
        roundContainer(view: view)
        view.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        view.shadowOffset = CGSize(width: 0, height: 2)
        view.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        view.shadowOpacity = 1
        view.shadowRadius = 3
    }

    func roundContainer(view: CALayer) {
        view.cornerRadius = 8
    }
}
