//
//  ColorSlidersVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by casandra grullon on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColorSlidersVC: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    
    var currentColor: Crayon!
    var updatedR: CGFloat?
    var updatedG: CGFloat?
    var updatedB: CGFloat?
    var updatedA: CGFloat?
    
    var newRed: Float = 1.0 {
        didSet {
            updatedR = CGFloat(redSlider.value)
            let value = String(format: "%.2f", redSlider.value)
            redLabel.text = "Red: \(value)"
        }
    }
    var newGreen: Float = 1.0 {
        didSet {
            updatedG = CGFloat(greenSlider.value)
            let value = String(format: "%.2f", greenSlider.value)
            greenLabel.text = "Green: \(value)"
        }
    }
    var newBlue: Float = 1.0 {
        didSet{
            updatedB = CGFloat(blueSlider.value)
            let value = String(format: "%.2f", blueSlider.value)
            blueLabel.text = "Blue: \(value)"
        }
    }
    var newAlpha: Double = 1.0 {
        didSet {
            updatedA = CGFloat(alphaStepper.value)
            let value = String(format: "%.2f", alphaStepper.value)
            alphaLabel.text = "Alpha: \(value)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = currentColor.name
        view.backgroundColor = configureBGColor()
        configure()
        blueLabel.text = "Blue: " + String(format: "%.2f", blueSlider.value)
        redLabel.text = "Red: " + String(format: "%.2f", redSlider.value)
        greenLabel.text = "Green: " + String(format: "%.2f", greenSlider.value)
        alphaLabel.text = "Alpha: " + String(format: "%.2f", alphaStepper.value)
    }
    
    func updateLabelColor() {
        if newGreen == 0 && newBlue == 0 && newRed == 0 && newAlpha < 1 {
            alphaLabel.textColor = .white
            alphaStepper.backgroundColor = .white
        } else {
            alphaLabel.textColor = .black
            alphaStepper.backgroundColor = .clear
        }
        
    }
    
    func configure() {
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(currentColor.blue) / 255
        
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.value = Float(currentColor.green) / 255
        
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.value = Float(currentColor.red) / 255
        
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.value = 1.0
        alphaStepper.stepValue = 0.1
    }
    
    func configureBGColor() -> UIColor {
        let red = CGFloat(currentColor.red) / 255
        let blue = CGFloat(currentColor.blue) / 255
        let green = CGFloat(currentColor.green) / 255
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    func getNewBackgroundColor() -> UIColor {
        return UIColor(red: updatedR ?? 1.0, green: updatedG ?? 1.0, blue: updatedB ?? 1.0, alpha: updatedA ?? 1.0)
    }
        
    @IBAction func redAction(_ sender: UISlider) {
        newRed = sender.value
        updatedR = CGFloat(sender.value)
        updatedB = CGFloat(blueSlider.value)
        updatedG = CGFloat(greenSlider.value)
        updatedA = CGFloat(alphaStepper.value)
        redLabel.text = "Red: " + String(format: "%.2f", redSlider.value)
        view.backgroundColor = getNewBackgroundColor()
        updateLabelColor()
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        newBlue = sender.value
        updatedB = CGFloat(sender.value)
        updatedR = CGFloat(redSlider.value)
        updatedG = CGFloat(greenSlider.value)
        updatedA = CGFloat(alphaStepper.value)
        blueLabel.text = "Blue: " + String(format: "%.2f", blueSlider.value)
        view.backgroundColor = getNewBackgroundColor()
        updateLabelColor()
    }
    
    @IBAction func greenAction(_ sender: UISlider) {
        newGreen = sender.value
        updatedG = CGFloat(sender.value)
        updatedB = CGFloat(blueSlider.value)
        updatedR = CGFloat(redSlider.value)
        updatedA = CGFloat(alphaStepper.value)
        greenLabel.text = "Green: " + String(format: "%.2f", greenSlider.value)
        view.backgroundColor = getNewBackgroundColor()
        updateLabelColor()
    }
    
    @IBAction func alphaAction(_ sender: UIStepper) {
        newAlpha = sender.value
        updatedA = CGFloat(sender.value)
        updatedB = CGFloat(blueSlider.value)
        updatedG = CGFloat(greenSlider.value)
        updatedR = CGFloat(redSlider.value)
        alphaLabel.text = "Alpha: " + String(format: "%.2f", alphaStepper.value)
        view.backgroundColor = getNewBackgroundColor()
        updateLabelColor()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        if sender.tag == 0 {
            view.backgroundColor = configureBGColor()
            redSlider.value = Float(currentColor.red) / 255
            greenSlider.value = Float(currentColor.green) / 255
            blueSlider.value = Float(currentColor.blue) / 255
            alphaStepper.value = 1.0
            alphaLabel.text = "Alpha: \(alphaStepper.value)"
            redLabel.text = "Red: \(redSlider.value)"
            blueLabel.text = "Blue: \(blueSlider.value)"
            greenLabel.text = "Green: \(greenSlider.value)"
            
        }
    }
    

    
}
