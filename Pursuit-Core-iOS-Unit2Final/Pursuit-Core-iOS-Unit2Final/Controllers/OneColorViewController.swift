//
//  OneColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Yuliia Engman on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class OneColorViewController: UIViewController {
    
    var crayon: Crayon?
    
    @IBOutlet weak var nameOfCrayonLabel: UILabel!
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var redValueSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var greenValueSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UISlider!
    @IBOutlet weak var blueValueSliderLabel: UILabel!
    @IBOutlet weak var alphaStepperLabel: UIStepper!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        guard let newCrayon = crayon else {
            fatalError("I did not prepare for the segue correctly")
        }
        
        configureRedSlider()
        configureGreenSlider()
        configureBlueSlider()
        configureStepper()
        
        nameOfCrayonLabel.text = newCrayon.name
        redSliderLabel.value = Float(newCrayon.red/255)
        redValueSliderLabel.text = "Red Value is \(String(format: "%.2f", redSliderLabel.value))"
        greenSliderLabel.value = Float(newCrayon.green/255)
        greenValueSliderLabel.text = "Green Value is \(String(format: "%.2f", greenSliderLabel.value))"
        blueSliderLabel.value = Float(newCrayon.blue/255)
        blueValueSliderLabel.text = "Blue Value is \(String(format: "%.2f", greenSliderLabel.value))"
        alphaValueLabel.text = "Alpha is \(alphaStepperLabel.value)"
        view.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(greenSliderLabel.value), alpha: CGFloat(alphaStepperLabel.value))
    }
    
    func configureRedSlider() {
        redSliderLabel.minimumValue = 0.0
        redSliderLabel.maximumValue = 1.0
    }
    
    func configureGreenSlider() {
        greenSliderLabel.minimumValue = 0.0
        greenSliderLabel.maximumValue = 1.0
    }
    
    func configureBlueSlider() {
        blueSliderLabel.minimumValue = 0.0
        blueSliderLabel.maximumValue = 1.0
    }
    
    func configureStepper() {
        alphaStepperLabel.minimumValue = 0.0
        alphaStepperLabel.maximumValue = 1.0
        alphaStepperLabel.stepValue = 0.1
        alphaStepperLabel.value = 1.0
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redSliderLabel.value = sender.value
        redValueSliderLabel.text = "Red Value is \(String(format: "%.2f", redSliderLabel.value))"
        view.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: CGFloat(alphaStepperLabel.value))
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenSliderLabel.value = sender.value
        greenValueSliderLabel.text = "Green Value is \(String(format: "%.2f", greenSliderLabel.value))"
        view.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: CGFloat(alphaStepperLabel.value))
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueSliderLabel.value = sender.value
        blueValueSliderLabel.text = "Blue Value is \(String(format: "%.2f", blueSliderLabel.value))"
        view.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: CGFloat(alphaStepperLabel.value))
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        alphaStepperLabel.value = sender.value
        alphaValueLabel.text = "Alpha is \(String(format: "%.1f", alphaStepperLabel.value))"
        view.backgroundColor = UIColor(red: CGFloat(redSliderLabel.value), green: CGFloat(greenSliderLabel.value), blue: CGFloat(blueSliderLabel.value), alpha: CGFloat(alphaStepperLabel.value))
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        updateUI()
    }
}

