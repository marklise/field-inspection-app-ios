//
//  GalleryManager.swift
//  AllMyPics
//
//  
//  Copyright © 2017 Amir Shayegh. All rights reserved.
//

import Foundation
import UIKit
import Photos

class GalleryManager {
    
    var multiSelectResult = [PHAsset]()

    init() {
        NotificationCenter.default.addObserver(forName: .selectedImages, object: nil, queue: nil, using: catchSelectedAssets)
    }

    // TODO: RENAME TO catchSelectedAssets
    func catchSelectedAssets(notification: Notification) {
        self.multiSelectResult = (notification.userInfo!["name"] as! [PHAsset])
    }
}
