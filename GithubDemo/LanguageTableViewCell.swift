//
//  LanguageTableViewCell.swift
//  GithubDemo
//
//  Created by Arjun Shukla on 10/25/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class LanguageTableViewCell: UITableViewCell {

    @IBOutlet weak var lblLanguageName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        if selected {
//            self.accessoryType = .checkmark//selected ? .checkmark : .none
        //} else {
//            self.accessoryType = .none//selected ? .checkmark : .none
//        }
//        self.accessoryType = selected ? .checkmark : .none
    }
    
}
