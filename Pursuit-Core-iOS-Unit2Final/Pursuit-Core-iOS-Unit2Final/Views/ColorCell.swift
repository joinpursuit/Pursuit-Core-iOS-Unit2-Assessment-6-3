//
//  ColorCell.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Joshua Viera on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class ColorCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var hexValueName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
