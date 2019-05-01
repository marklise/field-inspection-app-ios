//
//  UINavigationItem.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

import UIKit

extension UINavigationItem {
    @objc func emptyBackItemTitle() {
        backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}
