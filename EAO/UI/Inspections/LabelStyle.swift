//
//  LabelStyle.swift
//  time-me
//
//  
//  Copyright © 2018 Amir Shayegh. All rights reserved.
//

import Foundation
import UIKit

class LabelStyle {
    var height: CGFloat
    var roundCorners: Bool
    var bgColor: UIColor
    var labelTextColor: UIColor

    init(height: CGFloat, roundCorners: Bool, bgColor: UIColor, labelTextColor: UIColor) {

        self.height = height
        self.roundCorners = roundCorners
        self.bgColor = bgColor
        self.labelTextColor = labelTextColor
    }
}
