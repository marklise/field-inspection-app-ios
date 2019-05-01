//
//  PFUser.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import Parse
final class User: PFUser {

    @NSManaged var access: [String: Bool]?
    @NSManaged var teams: [String]?
//    {
//        "isSuperAdmin": false,
//        "isAdmin": false,
//        "isViewOnly": false,
//        "mobileAccess": true
//    }
}
