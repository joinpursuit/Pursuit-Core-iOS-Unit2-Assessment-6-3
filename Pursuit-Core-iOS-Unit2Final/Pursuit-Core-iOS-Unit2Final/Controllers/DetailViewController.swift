//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Maitree Bain on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var redTextLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenTextLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueTextLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaTextLabel: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func redSliderControl() {
        redSlider.minimumValue = 1.0
        redSlider.maximumValue = 300.0
        redSlider.value = 50.0
    }

    func greenSliderControl() {
        greenSlider.minimumValue = 1.0
        greenSlider.maximumValue = 300.0
        greenSlider.value = 50.0
    }
    
    func blueSliderControl() {
        blueSlider.minimumValue = 1.0
        greenSlider.maximumValue = 300.0
        greenSlider.value = 50.0
    }
    
    func alphaSliderControl() {
        alphaSlider.minimumValue = 0.1
        alphaSlider.maximumValue = 1.0
        alphaSlider.value = 0.2
    }
    
    func alphaStepperControl() {
        alphaStepper.minimumValue = 0.1
        alphaStepper.maximumValue = 1.0
        alphaStepper.value = 0.2
        alphaStepper.stepValue = 0.1
    }
}
