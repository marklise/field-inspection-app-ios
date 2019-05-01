//
//  InspectionFormCell_.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//
final class InspectionFormCell: UITableViewCell {
    
	@IBOutlet fileprivate var titleLabel: UILabel!
	@IBOutlet fileprivate var numberLabel: UILabel!
	@IBOutlet fileprivate var timeLabel: UILabel!
	@IBOutlet fileprivate var editButton: UIButton!
	
	@objc func setData(number: String?, title: String?, time: String?, isReadOnly: Bool) {
		titleLabel.text  = title
		numberLabel.text = number
		timeLabel.text   = time
		if isReadOnly {
			editButton.isHidden = true
		} else {
			editButton.isHidden = false 
		}
	}
}
