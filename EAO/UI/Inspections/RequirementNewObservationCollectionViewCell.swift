//
//  RequirementNewObservationCollectionViewCell.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import UIKit

class RequirementNewObservationCollectionViewCell: BaseCollectionCell {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var container: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        textField.delegate = self
        styleContainer(view: container.layer)
        roundContainer(view: textField.layer)
    }

    func setup(text: String, enableEditing: Bool) {
        textField.text = text
        if !enableEditing {
            textField.isUserInteractionEnabled = false
        }
    }
}

extension RequirementNewObservationCollectionViewCell: UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let vc = self.parentViewController as? NewObservationElementFormViewController
        let textString = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
        vc?.elementRequirement = textString
        return true
    }
}

