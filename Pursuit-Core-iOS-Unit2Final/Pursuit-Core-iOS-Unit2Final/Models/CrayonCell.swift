//
//  CrayonCell.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alfredo Barragan on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonCell: UITableViewCell {
    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonColorValueLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
