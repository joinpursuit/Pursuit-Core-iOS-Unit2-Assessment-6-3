//
//  DetailColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jian Ting Li on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailColorViewController: UIViewController {
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValueLabel: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    var slidersArr: [UISlider]!
    var colorValueLabelsArr: [UILabel]!
    var colorValuesArr: [Double]!
    
    var crayon: Crayon!
    var defaultColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = defaultColor
        colorNameLabel.text = crayon.name
        
        //setup sliders
        slidersArr = [redSlider, greenSlider, blueSlider]
        colorValueLabelsArr = [redValueLabel, greenValueLabel, blueValueLabel]
        colorValuesArr = [crayon.red, crayon.green, crayon.blue]
        
        for (i, slider) in slidersArr.enumerated() {
            slider.minimumValue = 0
            slider.maximumValue = 255
            
            slider.value = Float(colorValuesArr[i])
            colorValueLabelsArr[i].text = "\(Int(slider.value))"
        }
        
        //setup stepper
        alphaStepper.minimumValue = 0
        alphaStepper.maximumValue = 10
        
        alphaStepper.value = 10
        alphaValueLabel.text = "\(alphaStepper.value / 10)"
    }
    
    //action for sliders
    @IBAction func slidersChange(_ currentSlider: UISlider) {
        //use tag to specify identify the slider to modify the label associate with the current slider
    }
    
    
    //action for stepper
    @IBAction func stepperChange(_ stepper: UIStepper) {
        
    }
    
    
    //action for reset
    @IBAction func resetColorSettings(_ sender: Any) {
    
    }
    
}
