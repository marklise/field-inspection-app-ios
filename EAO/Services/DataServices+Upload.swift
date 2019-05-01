//
//  DataServices+Upload.swift
//  EAO
//
//  
//  Copyright © 2019 Province of British Columbia. All rights reserved.
//

import Foundation
import Parse
import Photos
import RealmSwift

extension DataServices {
    
    /* TODO:
     add operation to:
     - upload observations
     - upload photos, thumbs
     - upload audio
     - upload videos
     */
    
    func upload(inspection: Inspection, completion: @escaping (_ done: Bool) -> Void) {
        
        uploadQueue.maxConcurrentOperationCount = 2
        uploadQueue.qualityOfService = .background
        
        let inspectionId = inspection.id
        let inspectionOperation = InspectionUploadOperation(objectId: inspectionId) { (_) in
            print("finish uploading inspection \(inspectionId)")
            DispatchQueue.main.async {
                completion(true)
            }
        }
        self.uploadQueue.addOperation(inspectionOperation)
    }
}
