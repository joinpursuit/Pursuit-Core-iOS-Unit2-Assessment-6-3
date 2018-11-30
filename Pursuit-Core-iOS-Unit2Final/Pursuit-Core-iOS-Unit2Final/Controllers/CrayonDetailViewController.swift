//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jane Zhu on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    
    var crayon: Crayon!
    //var red: Double
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    lazy var currentRedSliderValue = CGFloat(crayon.red/255)
    lazy var currentGreenSliderValue = CGFloat(crayon.green/255)
    lazy var currentBlueSliderValue = CGFloat(crayon.blue/255)
    var currentAlphaStepperValue: CGFloat = 1
    
    fileprivate func sliderAndLabelSetUp(color: String, colorDouble: Double, slider: UISlider, label: UILabel) {
        label.text = "\(color): " + String(format: "%.2f", colorDouble/255)
        slider.value = Float(colorDouble/255)
        slider.maximumValue = 1
        slider.minimumValue = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = crayon.name
        view.backgroundColor = UIColor.init(red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
        sliderAndLabelSetUp(color: "Red", colorDouble: crayon!.red, slider: redSlider, label: redLabel)
        sliderAndLabelSetUp(color: "Green", colorDouble: crayon!.green, slider: greenSlider, label: greenLabel)
        sliderAndLabelSetUp(color: "Blue", colorDouble: crayon!.blue, slider: blueSlider, label: blueLabel)
        
        alphaLabel.text = "Alpha: 1"
        alphaStepper.value = 1.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.minimumValue = 0.0
        alphaStepper.stepValue = 0.1
    }
    
    private func updateBackground() {
        print(currentRedSliderValue)
        print(currentGreenSliderValue)
        print(currentBlueSliderValue)
        print(currentAlphaStepperValue)
        view.backgroundColor = UIColor.init(red: currentRedSliderValue, green: currentGreenSliderValue, blue: currentBlueSliderValue, alpha: CGFloat(currentAlphaStepperValue))
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        currentRedSliderValue = CGFloat(sender.value)
        updateBackground()
        redLabel.text = "Red: " + String(format: "%.2f", currentRedSliderValue)
    }
    
    
    @IBAction func greenSlider(_ sender: UISlider) {
        currentGreenSliderValue = CGFloat(sender.value)
        updateBackground()
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        currentBlueSliderValue = CGFloat(sender.value)
        updateBackground()
    }
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
        currentAlphaStepperValue = CGFloat(sender.value)
        updateBackground()
        alphaLabel.text = "Alpha: " + String(format: "%.1f", currentAlphaStepperValue)
    }
    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = UIColor.init(red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
        sliderAndLabelSetUp(color: "Red", colorDouble: crayon!.red, slider: redSlider, label: redLabel)
        sliderAndLabelSetUp(color: "Green", colorDouble: crayon!.green, slider: greenSlider, label: greenLabel)
        sliderAndLabelSetUp(color: "Blue", colorDouble: crayon!.blue, slider: blueSlider, label: blueLabel)
        alphaLabel.text = "Alpha: 1"
        alphaStepper.value = 1.0
    }
}
