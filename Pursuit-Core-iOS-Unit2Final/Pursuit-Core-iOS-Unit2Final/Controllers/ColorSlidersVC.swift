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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureRedSlider()
        configureBlueSlider()
        configureGreenSlider()
        configureAlphaStepper()
        view.backgroundColor = configureBGColor()
    }
    func configureRedSlider() {
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.value = Float(currentColor?.red ?? 1.0)
        redLabel.text = "Red: \(redSlider.value)"
    }
    
    func configureBlueSlider() {
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(currentColor?.blue ?? 1.0)
        blueLabel.text = "Blue: \(blueSlider.value)"
    }
    
    func configureGreenSlider() {
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.value = Float(currentColor?.green ?? 1.0)
        greenLabel.text = "Green: \(greenSlider.value)"
    }

    func configureAlphaStepper() {
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.value = 1.0
        alphaLabel.text = "Alpha: \(alphaStepper.value)"
    }
    
    func configureBGColor() -> UIColor {
        let red = CGFloat(currentColor?.red ?? 1.0) / 255
        let blue = CGFloat(currentColor?.blue ?? 1.0) / 255
        let green = CGFloat(currentColor?.green ?? 1.0) / 255
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
    @IBAction func redAction(_ sender: UISlider) {
        redSlider.value = sender.value
        //currentColor?.red = redSlider.value
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        blueSlider.value = sender.value
        //currentColor?.blue = blueSlider.value
    }
    
    @IBAction func greenAction(_ sender: UISlider) {
        greenSlider.value = sender.value
        //currentColor?.green = greenSlider.value
    }
    
    @IBAction func alphaAction(_ sender: UIStepper) {
        alphaStepper.value = sender.value
    }
    
}
