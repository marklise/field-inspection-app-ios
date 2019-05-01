//
//  TeamSearchTableViewCell.swift
//  EAO
//
//  
//  Copyright 2019 Province of British Columbia. All rights reserved.
//

import UIKit

class TeamSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    var team: Team?

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setup(team: Team) {
        self.team = team
        self.label.text = team.name
    }

    @IBAction func picked(_ sender: Any) {
        let parent = self.parentViewController as! TeamSearchViewController
        parent.selected(team: team!)
    }
}
