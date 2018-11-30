//
//  DetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Donkemezuo Raymond Tariladou on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    @IBOutlet weak var colorName: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
   public var color: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         redSlider.minimumValue = 0.0
         redSlider.maximumValue = 1.0
        

        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        
        stepper.minimumValue = 0.0
        stepper.maximumValue = 1.0
        
        updateColor()
    
    }
    
    private func updateColor() {
        colorName.text = color.name
        self.view.backgroundColor = UIColor.init(red: CGFloat(redSlider!.value), green: CGFloat(greenSlider!.value), blue: CGFloat(blueSlider!.value), alpha: CGFloat(stepper!.value))
       
    }
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        let value = sender.value
        redLabel.text = "\(value)"
        updateColor()
       
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        let value = sender.value
        greenLabel.text = "\(value)"
        updateColor()
       
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        let value = sender.value
        blueLabel.text = "\(value)"
        updateColor()
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        let value = sender.value
        stepperLabel.text = "\(value) "
        updateColor()
    }
    
    @IBAction func reStartButton(_ sender: Any) {
       
        greenSlider.value = greenSlider.minimumValue
        greenLabel.text = "\(greenSlider.minimumValue)"
        redSlider.value = redSlider.minimumValue
        redLabel.text = "\(redSlider.minimumValue)"
        blueSlider.value = blueSlider.minimumValue
        blueLabel.text = "\(blueSlider.value)"
    }
}
