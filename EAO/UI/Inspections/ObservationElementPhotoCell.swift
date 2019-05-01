//
//  ObservationElementPhotoCell.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia
//

final class ObservationElementPhotoCell: UICollectionViewCell {
    
	@IBOutlet private var imageView: UIImageView!
	@objc func setData(image: UIImage?) {
		imageView.image = image
	}
}
