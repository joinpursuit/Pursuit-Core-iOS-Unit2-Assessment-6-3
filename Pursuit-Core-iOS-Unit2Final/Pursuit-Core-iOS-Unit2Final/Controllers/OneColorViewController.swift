//
//  OneColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Yuliia Engman on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class OneColorViewController: UIViewController {
    
    // HERE WILL BE OBJECT FOR PREPARE FOR SEGUE FUNC
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
        redSliderLabel.value = Float(newCrayon.red)
        redValueSliderLabel.text = "Red Value is \(newCrayon.red)"
        greenSliderLabel.value = Float(newCrayon.green)
        greenValueSliderLabel.text = "Green Value is \(newCrayon.green)"
        blueSliderLabel.value = Float(newCrayon.blue)
        blueValueSliderLabel.text = "Blue Value is \(newCrayon.blue)"
        alphaValueLabel.text = "Alpha is \(alphaStepperLabel.value)"
        view.backgroundColor = UIColor(red: CGFloat(newCrayon.red/255), green: CGFloat(newCrayon.green/255), blue: CGFloat(newCrayon.blue/255), alpha: 1)
    }
    
    func configureRedSlider() {
        redSliderLabel.minimumValue = 0.0
        redSliderLabel.maximumValue = 1.0
        //redSliderLabel.value = Float(crayon.red)
    }
    
    func configureGreenSlider() {
        greenSliderLabel.minimumValue = 0.0
        greenSliderLabel.maximumValue = 1.0
        //greenSliderLabel.value = Float(crayon.green) //17
    }
    
    func configureBlueSlider() {
        blueSliderLabel.minimumValue = 0.0
        blueSliderLabel.maximumValue = 1.0
        //blueSliderLabel.value = Float(crayon.blue) //17
    }
    
    func configureStepper() {
        alphaStepperLabel.minimumValue = 0.0
        alphaStepperLabel.maximumValue = 1.0
        alphaStepperLabel.stepValue = 0.1
        alphaStepperLabel.value = 1.0 //17.0
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
    
}

//
//var sliderFont: Float? {
//     didSet {
//         updateUI()
//         //changeFontLabel.text = "Preview Font Size: \(Int(sliderFont))"
//     }
// }
//
// override func viewDidLoad() {
//     super.viewDidLoad()
//     configureStepper()
//     configureSlide()
//     updateUI()
// }
//
// func updateUI(){
//     guard let updatedFontSize = sliderFont else {
//         fatalError("I did not prepare for the segue correctly")
//     }
//     sliderOutlet?.value = updatedFontSize
//     stepperOutlet?.value = Double(updatedFontSize)
//     changeFontLabel?.text = "Preview Font Size: \(Int(updatedFontSize))"
// }
//
//
// func configureStepper() {
//     stepperOutlet.minimumValue = 5.0
//     stepperOutlet.maximumValue = 50.0
//     stepperOutlet.stepValue = 1.0
//
//     //stepperOutlet.value = Double(sliderFont) //17.0
// }
//
// func configureSlide() {
//     sliderOutlet.minimumValue = 5
//     sliderOutlet.maximumValue = 50
//     //sliderOutlet.value = sliderFont //17
// }
//
// @IBAction func sliderAction(_ sender: UISlider) {
//     //stepperOutlet.value = Double(sender.value)
//     sliderFont = sender.value
// }
//
// @IBAction func stepperAction(_ sender: UIStepper) {
//     //sliderOutlet.value = Float(sender.value)
//     sliderFont = Float(sender.value) // of type Float
// }
//
// @IBAction func returnButton(_ sender: UIButton) {
// }
