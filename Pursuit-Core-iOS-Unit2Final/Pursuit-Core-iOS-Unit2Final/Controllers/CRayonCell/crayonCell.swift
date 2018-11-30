//
//  crayonCell.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Pursuit on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class crayonCell: UITableViewCell {

    @IBOutlet weak var colorName: UILabel!
    
    @IBOutlet weak var hexLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
