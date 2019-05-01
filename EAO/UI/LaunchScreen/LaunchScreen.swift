//
//  LaunchScreen.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

class LaunchScreen: UIViewController {
    
	static private let appDelegate = UIApplication.shared.delegate as! AppDelegate
	static private let controller  = LaunchScreen.storyboardInstance()
	
	@objc static func show() {
		controller?.dismiss(animated: false, completion: nil)
		appDelegate.window?.rootViewController?.present(controller!, animated: false, completion: nil)
	}
	
	@objc static func hide() {
		controller?.dismiss(animated: false, completion: nil)
	}
}
