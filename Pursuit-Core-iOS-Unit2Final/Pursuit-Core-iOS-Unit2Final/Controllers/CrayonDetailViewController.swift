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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
 //   @IBOutlet weak var resetButton: UIButton!

    fileprivate func sliderAndLabelSetUp(color: Double, slider: UISlider, label: UILabel) {
        label.text = "Red: " + (String(format: "%.2f", color/255))
        slider.maximumValue = 1
        slider.minimumValue = 0
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    nameLabel.text = crayon.name
    view.backgroundColor = UIColor.init(red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
        sliderAndLabelSetUp(color: crayon!.red, slider: redSlider, label: redLabel)
        sliderAndLabelSetUp(color: crayon!.green, slider: greenSlider, label: greenLabel)
        sliderAndLabelSetUp(color: crayon!.blue, slider: blueSlider, label: blueLabel)
    }
    var currentRedSliderValue: Float = 0.0 {
        didSet {
            redLabel.text = "Red: " + String(format: "%.2f", currentRedSliderValue)
        }
    }
    var currentGreenSliderValue: Float = 0.0 {
        didSet {
            redLabel.text = "Green: " + String(format: "%.2f", currentGreenSliderValue)
        }
    }
    var currentBlueSliderValue: Float = 0.0 {
        didSet {
            redLabel.text = "Blue: " + String(format: "%.2f", currentBlueSliderValue)
        }
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        currentRedSliderValue = sender.value
    }
    
    
    @IBAction func greenSlider(_ sender: UISlider) {
        currentGreenSliderValue = sender.value
        greenLabel.text = "Green: " + (String(format: "%.2f", sender.value/255))
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        currentBlueSliderValue = sender.value
        blueLabel.text = "Blue: " + (String(format: "%.2f", sender.value/255))
    }
    
    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = UIColor.init(red: CGFloat(crayon.red/255), green: CGFloat(crayon.green/255), blue: CGFloat(crayon.blue/255), alpha: 1)
    }
}
