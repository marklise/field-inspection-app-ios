//
//  PFGeoPoint.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

import Parse
extension PFGeoPoint {

    @objc func toString( )-> String? {
		let lat = "\(latitude)".trimBy(numberOfChar: 10)
		let lon = "\(longitude)".trimBy(numberOfChar: 10)
		return "\(lat) by \(lon)"
	}
    
    func toRealmCoordinate() -> RealmLocation {
        let location = RealmLocation()
        location.latitude = latitude
        location.longitude = longitude
        return location
    }
}
