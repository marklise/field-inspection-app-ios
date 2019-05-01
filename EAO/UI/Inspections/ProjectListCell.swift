//
//  ProjectListCell.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

class ProjectListCell: UITableViewCell {
    
	@IBOutlet var titleLabel: UILabel!
	
	@objc func setData(title: NSAttributedString?) {
		self.titleLabel.attributedText = title
	}
}
