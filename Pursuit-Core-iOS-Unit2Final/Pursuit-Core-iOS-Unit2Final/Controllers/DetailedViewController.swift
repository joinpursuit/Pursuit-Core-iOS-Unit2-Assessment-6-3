//
//  DetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alfredo Barragan on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    var colors: Crayon!
    
    
    @IBOutlet weak var nameOfCrayonLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var theStepper: UIStepper!
    
    
    @IBOutlet weak var labelForRed: UILabel!
    @IBOutlet weak var labelForGreen: UILabel!
    @IBOutlet weak var labelForBlue: UILabel!
    @IBOutlet weak var labelForStepper: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        theStepper.minimumValue = 0
        theStepper.maximumValue = 1
        theStepper.value = 1
        theStepper.stepValue = 0.1
        labelForStepper.text = String(theStepper.value)
        
        
    }

    @IBAction func redSliderChangingColor(_ sender: UISlider) {
            view.backgroundColor = UIColor(displayP3Red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(theStepper.value))
            labelForRed.text = String(Int(sender.value * 250))
        
    }
    

    @IBAction func greenSliderChangingColor(_ sender: UISlider) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(theStepper.value))
        labelForGreen.text = String(Int(sender.value * 250))
        
    }
    
    @IBAction func blueSliderChangingColor(_ sender: UISlider) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(sender.value), alpha: CGFloat(theStepper.value))
        labelForBlue.text = String(Int(sender.value * 250))
    
    }
    

    @IBAction func theStepperChangingValue(_ sender: UIStepper) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(theStepper.value))
        labelForStepper.text = String(theStepper.value)
    
    }
    

    @IBAction func restartButtonStartingOver (_ sender: UIButton) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(colors.red/250), green: CGFloat(colors.green/250), blue: CGFloat(colors.blue/250), alpha: 1)
        redSlider.value = Float(colors.red/250)
        blueSlider.value = Float(colors.blue/250)
        greenSlider.value = Float(colors.green/250)
        labelForRed.text = String(colors.red/250)
        labelForBlue.text = String(colors.blue/250)
        labelForGreen.text = String(colors.green/250)
    }

}







