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
    
    @IBOutlet var allLabelsArr: [UILabel]!
    
    var slidersArr: [UISlider]!
    var colorValueLabelsArr: [UILabel]!
    var colorValuesArr: [Double]!
    
    var crayon: Crayon!
    var defaultColor: UIColor!
    
    var alphaValue: Double! //{
//        didSet {
//
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = defaultColor
        colorNameLabel.text = crayon.name
        
        slidersArr = [redSlider, greenSlider, blueSlider]
        colorValueLabelsArr = [redValueLabel, greenValueLabel, blueValueLabel]
        
        setDefaultSetting()
    }
    
    
    //action for sliders
    @IBAction func slidersChange(_ currentSlider: UISlider) {
        
        colorValuesArr[currentSlider.tag] = Double(currentSlider.value)
        
        self.view.backgroundColor = CrayonBrain.rGBtoUIColor(red: colorValuesArr[0], green: colorValuesArr[1], blue: colorValuesArr[2], alpha: alphaStepper.value)
        
        colorValueLabelsArr[currentSlider.tag].text = Int(colorValuesArr[currentSlider.tag]).description
    }
    
    
    //action for stepper
    @IBAction func stepperChange(_ stepper: UIStepper) {
        let alphaValue = stepper.value / 10
        
        self.view.backgroundColor = CrayonBrain.rGBtoUIColor(red: colorValuesArr[0], green: colorValuesArr[1], blue: colorValuesArr[2], alpha: alphaValue)
        
        alphaValueLabel.text = alphaValue.description
    }
    
    
    //action for reset button
    @IBAction func resetColorSettings(_ sender: UIButton) {
        self.view.backgroundColor = defaultColor
        setDefaultSetting()
    }
    
    func setDefaultSetting() {
        //setup colors & alpha
        colorValuesArr = [crayon.red, crayon.green, crayon.blue]
        alphaValue = 1
        
        //setup slider
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
}
