//
//  Date.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

extension Date {
    public func timeStampFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE MMM d, HH:mm:s, y"
        return dateFormatter.string(from: self)
    }
	
	public func datePickerFormat() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "EEEE MMM dd, YYYY"
		return dateFormatter.string(from: self)
	}
	
	public func inspectionFormat() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "MMM dd, YYYY"
		return dateFormatter.string(from: self)
	}
}
