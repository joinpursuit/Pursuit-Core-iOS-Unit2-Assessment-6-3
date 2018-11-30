//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Leandro Wauters on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {

    var crayon: Crayon!
    
    
    @IBOutlet weak var crayonName: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        alphaStepper.minimumValue = 0
        alphaStepper.maximumValue = 1
        alphaStepper.value = 1
        alphaStepper.stepValue = 0.1
        alphaLabel.text = String(alphaStepper.value)
        crayonName.text = crayon.name

    }
    

    @IBAction func redSliderChange(_ sender: UISlider) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaStepper.value))
        redLabel.text = String(sender.value)
    }
    
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaStepper.value))
        greenLabel.text = String(sender.value)
    }
    
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(sender.value), alpha: CGFloat(alphaStepper.value))
        blueLabel.text = String(sender.value)
    }
    
    
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(sender.value))
        alphaLabel.text = String(alphaStepper.value)
        
    }
    
    @IBAction func resetToOriginalColor(_ sender: UIButton) {
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red/250), green: CGFloat(crayon.green/250), blue: CGFloat(crayon.blue/250), alpha: 1)
       redSlider.value = Float(crayon.red/250)
       redLabel.text = String(crayon.red/250)
        greenSlider.value = Float(crayon.green/250)
        greenLabel.text = String(crayon.green/250)
        blueSlider.value = Float(crayon.blue/250)
        blueLabel.text = String(crayon.blue/250)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
