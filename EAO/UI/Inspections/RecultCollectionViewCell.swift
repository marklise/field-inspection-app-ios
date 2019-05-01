//
//  RecultCollectionViewCell.swift
//  AllMyPics
//
//  
//  Copyright © 2017 Amir Shayegh. All rights reserved.
//

import UIKit
import Photos

class RecultCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    func setUp(phAsset: PHAsset) {
        AssetManager.sharedInstance.getImageFromAsset(phAsset: phAsset) { (image) in
            self.imageView.image = image
        }
    }

    func setImage(image: UIImage) {
        self.imageView.image = image
    }
}
