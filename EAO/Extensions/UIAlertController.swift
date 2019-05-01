//
//  UIAlertController.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

import UIKit

extension UIAlertController {
	@objc static var noInternet: UIAlertController {
		return UIAlertController(title: "Network Error", message: "It seems that you don't have internet connection, please try again when you establish internet connection")
	}
}
