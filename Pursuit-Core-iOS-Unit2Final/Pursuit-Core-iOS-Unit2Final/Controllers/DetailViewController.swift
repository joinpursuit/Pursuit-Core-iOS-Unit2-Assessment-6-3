//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Aaron Cabreja on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var crayon: Crayon!
    
    
    
    @IBOutlet weak var redSliderOutlet: UISlider!
    
    
    @IBOutlet weak var alphaStepperOutlet: UIStepper!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    
    
    @IBOutlet weak var blueSliderOutlet: UISlider!
    @IBOutlet weak var colorName: UILabel!
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
    }
    
    
    @IBOutlet weak var redLabel: UILabel!
    
  
    
    @IBAction func redSlider(_ sender: UISlider) {
    }
    
    
    @IBOutlet weak var greenLabel: UILabel!
    
    
    @IBAction func greenSlider(_ sender: UISlider) {
    }
    
    
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBAction func blueSlider(_ sender: UISlider) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSliderOutlet.value = Float(crayon.red)
        redLabel.text = "The current value of red is \(Float(crayon.red))"
        
        redSliderOutlet.minimumValue = 0.0
        redSliderOutlet.maximumValue = 1.0
        
        blueSliderOutlet.value = Float(crayon.blue)
        blueLabel.text = "The current value of blue is \(Float(crayon.blue))"
        
        blueSliderOutlet.minimumValue = 0.0
        blueSliderOutlet.maximumValue = 1.0
        
        greenSliderOutlet.value = Float(crayon.green)
        greenLabel.text = "The current value of green is \(Float(crayon.green))"
        
        greenSliderOutlet.minimumValue = 0.0
        greenSliderOutlet.maximumValue = 1.0
        
        
        //**Aaron LOOK AT THIS!!!
        //stepper setup
//        stepperControl.wraps = true
//        stepperControl.autorepeat = true
//
//        stepperControl.value = 0
//        stepperLabel.text = "0"
//
//        stepperControl.maximumValue = 10
//        stepperControl.minimumValue = 0
        updateCrayonsUI()
    }
    private func updateCrayonsUI(){
        colorName.text = crayon.name
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon!.red), green: CGFloat(crayon!.green), blue: CGFloat(crayon!.blue), alpha: 255)
    }
}
