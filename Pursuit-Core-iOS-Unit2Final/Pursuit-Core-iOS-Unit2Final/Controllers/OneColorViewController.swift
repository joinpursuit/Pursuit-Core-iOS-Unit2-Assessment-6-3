//
//  OneColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Yuliia Engman on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class OneColorViewController: UIViewController {
    
    @IBOutlet weak var nameOfCrayonLabel: UILabel!
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var redValueSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var greenValueSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UISlider!
    @IBOutlet weak var blueValueSliderLabel: UILabel!
    @IBOutlet weak var alphaStepperLabel: UIStepper!
    @IBOutlet weak var alphaValueLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    

}
