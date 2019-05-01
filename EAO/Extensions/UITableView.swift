//
//  UITableView.swift
//
//
//  Copyright 2019 Province of British Columbia
//

import UIKit

extension UITableView {
    @objc func registerNib(withIdentifier identifer: String) {
        self.register(UINib(nibName: identifer, bundle: nil), forCellReuseIdentifier: identifer)
    }
    @objc func cell(withIdentifier identifier: String, for indexPath: IndexPath) -> UITableViewCell {
        return self.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }
}
