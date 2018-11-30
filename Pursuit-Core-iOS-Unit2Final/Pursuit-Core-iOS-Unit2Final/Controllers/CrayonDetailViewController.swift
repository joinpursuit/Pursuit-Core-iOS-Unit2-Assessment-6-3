//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Genesis Mosquera on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    
    @IBOutlet weak var crayonColor:UILabel!
    
    
    var crayonInfo: Crayon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonUI()
    }
    
    private func updateCrayonUI() {
        guard let crayonInfo = crayonInfo else {
            fatalError("Cell is nil")
        }
        crayonColor.text = crayonInfo.name
    }
    
}
