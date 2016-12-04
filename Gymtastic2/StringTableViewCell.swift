//
//  StringTableViewCell.swift
//  Gymtastic2
//
//  Created by Olivia Wiedmann on 12/3/16.
//  Copyright © 2016 Tessa Wiedmann. All rights reserved.
//

import UIKit

class StringTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
