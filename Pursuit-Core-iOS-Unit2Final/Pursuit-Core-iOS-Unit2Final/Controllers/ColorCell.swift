//
//  ColorCell.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Pritesh Nadiadhara on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ColorCell: UITableViewCell {
    @IBOutlet weak var color: UILabel!

    @IBOutlet weak var hexValue: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
