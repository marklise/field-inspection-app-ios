//
//  Constants.swift
//  WeddingBuzz
//
//  
//  Copyright 2019 Province of British Columbia
//

struct Constants {
	static let textFieldLenght = 500
	static let textViewLenght  = 5000
    
    struct API {
        static let projectListURI = "https://projects.eao.gov.bc.ca/api/projects/published"
    }
    
    static let jpegCompression: CGFloat = 0.8
    static let jpegNoCompression: CGFloat = 1.0
}

extension Notification.Name {
    static let wifiAvailabilityChanged = Notification.Name("wifiAvailabilityChanged")
}
