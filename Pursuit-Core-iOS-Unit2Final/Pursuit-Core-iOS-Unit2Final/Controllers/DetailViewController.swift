//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jose Alarcon Chacon on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var colorName: UILabel!
    
    
    @IBOutlet weak var stepperLabel: UILabel!
    
    @IBOutlet weak var sliderRed: UILabel!
    @IBOutlet weak var sliderControl: UISlider!
    
    @IBOutlet weak var sliderGreen: UILabel!
    @IBOutlet weak var sliderControl1: UISlider!
    
    @IBOutlet weak var sliderBlue: UILabel!
    @IBOutlet weak var sliderControl2: UISlider!
    
    var colors: Crayon?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sliderRed.text = "0.0"
        sliderControl.minimumValue = 0.0
        sliderControl.maximumValue = 1.0
        
        sliderGreen.text = "0.0"
        sliderControl1.minimumValue = 0.0
        sliderControl1.maximumValue = 1.0
        
        sliderBlue.text = "0.0"
        sliderControl2.minimumValue = 0.0
        sliderControl2.maximumValue = 1.0
        
        stepperLabel.text = "0.0"
        

        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderRed.text = Int(sender.value).description
        view.backgroundColor = .red
    }
    @IBAction func sliderChange1(_ sender: UISlider) {
        sliderGreen.text = Int(sender.value).description
        view.backgroundColor = .green
    }
    @IBAction func sliderChange2(_ sender: UISlider) {
        sliderBlue.text = Int(sender.value).description
        view.backgroundColor = .blue
    }
    
    @IBAction func stepperChange3(_ sender: UIStepper) {
        stepperLabel.text = Int(sender.value).description
    }
}
