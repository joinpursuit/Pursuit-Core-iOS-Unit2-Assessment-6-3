//
//  ColorTableViewCell.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jose Alarcon Chacon on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var colorhex: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
  }

