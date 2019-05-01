//
//  SettingsViewController.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

import Parse
final class SettingsController: UITableViewController {
    
	// MARK: IB Outlets
	@IBOutlet fileprivate var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
    }
    
	@IBAction fileprivate func logoutTapped(_ sender: UIButton) {
        
        guard Reachability.isConnectedToNetwork() else {
            self.self.presentAlert(controller: UIAlertController.noInternet)
            return
        }
        
		sender.isEnabled = false
		navigationController?.view.isUserInteractionEnabled = false
		indicator.startAnimating()
        
		PFUser.logOutInBackground { (error) in
			guard error == nil else {
				sender.isEnabled = true
				self.navigationController?.view.isUserInteractionEnabled = true
				self.indicator.stopAnimating()
				self.presentAlert(title: "Couldn't log out", message: "Error code is \((error as NSError? )?.code ?? 0)")
				return
			}
			self.dismiss(animated: true, completion: nil)
		}
	}
}
