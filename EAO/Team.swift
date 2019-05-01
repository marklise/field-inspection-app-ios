//
//  Team.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import Foundation

class Team {
    var objectID: String
    var name: String
    var isActive: Bool

    init(objectID: String, name: String, isActive: Bool) {
        self.objectID = objectID
        self.name = name
        self.isActive = isActive
    }
}
