//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Oscar Victoria Gonzalez  on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    

    var cray: Crayon!

    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonHexLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    
    
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()


    }

    func updateUI() {
        guard let theCrayon = cray else {
            fatalError("error")
        }
        title = theCrayon.name
        
    }


}
