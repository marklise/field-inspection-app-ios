//
//  UILabel.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

extension UITextField {
	
	@objc func animate(newText: String, characterDelay: TimeInterval) {
		
		DispatchQueue.main.async {
			
			self.text = ""
			for (index, character) in newText.enumerated() {
				DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
					self.text?.append(character)
				}
			}
		}
	}
}
