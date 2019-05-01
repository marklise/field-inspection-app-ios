//
//  FormReqirementTableViewCell.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import UIKit

class FormReqirementTableViewCell: BaseFormCell {

    @IBOutlet weak var container: UIView!
    @IBOutlet weak var textField: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        styleContainer(view: container.layer)
        roundContainer(view: textField.layer)
        textField.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func updateRequirement(_ sender: Any) {
        let vc = self.parentViewController as? NewObservationElementFormViewController
        vc?.elementRequirement = textField.text!
    }

    func setUp(text: String) {
        self.textField.text = text
    }
}

extension FormReqirementTableViewCell: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let vc = self.parentViewController as? NewObservationElementFormViewController
        let textString = NSString(string: textField.text!).replacingCharacters(in: range, with: string)
        vc?.elementRequirement = textString
        return true
    }
}
