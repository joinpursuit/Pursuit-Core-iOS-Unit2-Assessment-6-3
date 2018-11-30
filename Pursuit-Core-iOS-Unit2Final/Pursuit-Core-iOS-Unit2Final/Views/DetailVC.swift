//
//  DetailVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Joshua Viera on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var backgroundColor: UIView!
    
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaValue: UILabel!
    
    var color: Crayon!
    var newBlueValue = Double()
    var newRedValue = Double()
    var newGreenValue = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor.backgroundColor = UIColor.init(red: CGFloat(color!.red/255), green: CGFloat(color!.green/255), blue: CGFloat(color!.blue/255), alpha: 1.0)
        colorName.text = color.name
        redLabel.text = "Red:\(color.red/255)"
        greenLabel.text = "Green:\(color.green/255)"
        blueLabel.text = "Blue:\(color.blue/255)"
        setUpSlider(Slider: greenSlider)
        setUpSlider(Slider: blueSlider)
        setUpSlider(Slider: redSlider)
        greenSlider.value = Float(color.green/255)
        blueSlider.value = Float(color.blue/255)
        redSlider.value = Float(color.red/255)
        alphaValue.text = "Alpha: \(1.0)"
        alphaStepper.value = 1.0
        fixDarkText()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        setUpSlider(Slider: redSlider)
        setUpSlider(Slider: blueSlider)
        setUpSlider(Slider: greenSlider)
        redLabel.text =  ("Red:\(color.red/255)")
        greenLabel.text = ("Green:\(color.green/255)")
        blueLabel.text = ("Blue:\(color.blue/255)")
        redSlider.value = Float(color.red/255)
        blueSlider.value = Float(color.blue/255)
        greenSlider.value = Float(color.green/255)
        backgroundColor.backgroundColor = UIColor.init(red: CGFloat(color.red/255), green: CGFloat(color.green/255), blue: CGFloat(color.blue/255), alpha: 1.0)
        backgroundColor.alpha = 1.0
        alphaValue.text = "Alpha: \(1.0)"
        colorName.textColor = .black
        redLabel.textColor = .black
        greenLabel.textColor = .black
        blueLabel.textColor = .black
        alphaValue.textColor = .black
        
        fixDarkText()
    }
    
    @IBAction func alphaChanged(_ sender: UIStepper) {
        alphaStepper.stepValue = 1/10
        alphaStepper.minimumValue = 0
        alphaStepper.maximumValue = 1
        alphaValue.text = "Alpha: \(alphaStepper.value)"
        backgroundColor.alpha = CGFloat(alphaStepper.value)
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        redLabel.text = ("Red:\(CGFloat(sender.value).description)")
        newRedValue = Double(CGFloat(sender.value))
        updateBackgroundColor(Red: Double(sender.value), Green: Double(newGreenValue), Blue: Double(newBlueValue))
        fixDarkText()
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        greenLabel.text = ("Green:\( CGFloat(sender.value).description)")
        newGreenValue = Double(CGFloat(sender.value))
        updateBackgroundColor(Red: Double(newRedValue), Green: Double(sender.value), Blue: Double(newBlueValue))
        fixDarkText()
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        blueLabel.text = ("Blue:\( CGFloat(sender.value).description)")
        newBlueValue = Double(CGFloat(sender.value))
        updateBackgroundColor(Red: Double(newRedValue), Green: Double(newGreenValue), Blue: Double(sender.value))
        fixDarkText()
    }
    
    func setUpSlider(Slider: UISlider){
        Slider.maximumValue = 1
        Slider.minimumValue = 0
    }
    
    func updateBackgroundColor(Red: Double, Green: Double, Blue: Double){
        newRedValue = Red // represent new value
        newGreenValue = Green
        newBlueValue = Blue
        
        if Red != color.red && Green != color.green && Blue != color.blue{
            backgroundColor.backgroundColor = UIColor(red: CGFloat(Red), green: CGFloat(Green), blue: CGFloat(Blue), alpha: 1.0)
        }
        fixDarkText()
    }
    
    func fixDarkText() {
        if backgroundColor.backgroundColor == UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0) {
            colorName.textColor = .white
            redLabel.textColor = .white
            greenLabel.textColor = .white
            blueLabel.textColor = .white
            alphaValue.textColor = .white
            
        
        }
    }
}
