//
//  miFormImageTableViewCell.swift
//  time-me
//
//  
//  Copyright © 2018 Amir Shayegh. All rights reserved.
//

import UIKit

class miFormImageTableViewCell: BaseFormCell {

    @IBOutlet weak var imageContainer: UIImageView!
    @IBOutlet weak var container: UIView!

    var obj: SimpleCell? {
        didSet {
            self.imageContainer.image = obj?.image
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        styleContainer(view: container.layer)
        roundContainer(view: (imageView?.layer)!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setup(obj: SimpleCell) {
        self.obj = obj
    }
}

