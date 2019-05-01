//
//  PFObservation.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

import Parse
final class PFObservation: PFObject, PFSubclassing {
    
    @NSManaged var id: String?
    @NSManaged var inspectionId: String?
    @NSManaged var title: String?
    @NSManaged var requirement: String?
    @NSManaged var coordinate: PFGeoPoint?
    @NSManaged var pinnedAt: Date?
    @NSManaged var observationDescription: String?
    @NSManaged var inspection: PFInspection?

    static func parseClassName() -> String {
        return "Observation"
    }
    
    @objc static func load(for inspectionId: String,result: @escaping (_ observations: [PFObservation]?)->Void) {
        guard let query = PFObservation.query() else {
            result(nil)
            return
        }
        query.fromLocalDatastore()
        query.whereKey("inspectionId", equalTo: inspectionId)
        query.order(byDescending: "pinnedAt")
        query.findObjectsInBackground(block: { (objects, error) in
            result(objects as? [PFObservation])
        })
    }
}
