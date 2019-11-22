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
    
    var currentColor: Crayon?
    var updatedRed: CGFloat!
    var updatedBlue: CGFloat!
    var updatedGreen: CGFloat!
    var updatedAlpha: CGFloat!
    var updatedBGC: UIColor!
    
    var newRed: Float = 1.0 {
        didSet {
            let value = String(format: "%.2f", redSlider.value)
            updatedRed = CGFloat(redSlider.value)
            redLabel.text = "Red: \(value)"
        }
    }
    var newGreen: Float = 1.0 {
        didSet {
            let value = String(format: "%.2f", greenSlider.value)
            updatedGreen = CGFloat(greenSlider.value)
            greenLabel.text = "Green: \(value)"
        }
    }
    var newBlue: Float = 1.0 {
        didSet{
            let value = String(format: "%.2f", blueSlider.value)
            updatedBlue = CGFloat(blueSlider.value)
            blueLabel.text = "Blue: \(value)"
        }
    }
    var newAlpha: Double = 1.0 {
        didSet {
            let value = String(format: "%.2f", alphaStepper.value)
            updatedAlpha = CGFloat(alphaStepper.value)
            alphaLabel.text = "Alpha: \(value)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = configureBGColor()
        configure()
        title = currentColor?.name
    }
    
    func configure() {
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(currentColor?.blue ?? 1.0) / 255
        
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.value = Float(currentColor?.green ?? 1.0) / 255
        
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.value = Float(currentColor?.red ?? 1.0) / 255
        
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.value = 1.0
        alphaStepper.stepValue = 0.1
    }
    
    func configureBGColor() -> UIColor {
        let red = CGFloat(currentColor?.red ?? 1.0) / 255
        let blue = CGFloat(currentColor?.blue ?? 1.0) / 255
        let green = CGFloat(currentColor?.green ?? 1.0) / 255
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    func getNewBackgroundColor() -> UIColor {
        let red = updatedRed ?? 1.0
        let blue = updatedBlue ?? 1.0
        let green = updatedGreen ?? 1.0
        let alpha = updatedAlpha ?? 1.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    
    @IBAction func redAction(_ sender: UISlider) {
        newRed = sender.value
        updatedRed = CGFloat(sender.value)
        view.backgroundColor = getNewBackgroundColor()
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        newBlue = sender.value
        updatedBlue = CGFloat(sender.value)
        view.backgroundColor = getNewBackgroundColor()
    }
    
    @IBAction func greenAction(_ sender: UISlider) {
        newGreen = sender.value
        updatedGreen = CGFloat(sender.value)
        view.backgroundColor = getNewBackgroundColor()
    }
    
    @IBAction func alphaAction(_ sender: UIStepper) {
        newAlpha = sender.value
        updatedAlpha = CGFloat(sender.value)
        view.backgroundColor = getNewBackgroundColor()
    }
    
}
