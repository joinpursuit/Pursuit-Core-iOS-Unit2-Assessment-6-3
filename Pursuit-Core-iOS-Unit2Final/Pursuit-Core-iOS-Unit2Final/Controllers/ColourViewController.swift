//
//  ColourViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Cameron Rivera on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColourViewController: UIViewController {
    
    // MARK: Outlets of Colour View Controller
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var resetButton: UIBarButtonItem!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var baseSegmentedController: UISegmentedControl!
    
    // MARK: Properties of Colour View Controller
    var colour: Crayon?
    var alpha: Double = 1
    
    // MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        redTextField.delegate = self
        greenTextField.delegate = self
        blueTextField.delegate = self
        setUp()
    }

    // MARK: Helper Methods
    private func setUp(){
        guard let crayon = colour else{
            fatalError("Could not unwrap colour.")
        }
        
        baseSegmentedController.setTitle("Decimal", forSegmentAt: 0)
        baseSegmentedController.setTitle("Hex", forSegmentAt: 1)
    
        redSlider.maximumValue = 1.0
        redSlider.minimumValue = 0.0
        
        blueSlider.maximumValue = 1.0
        blueSlider.minimumValue = 0.0
        
        greenSlider.maximumValue = 1.0
        greenSlider.minimumValue = 0.0
        
        alphaStepper.maximumValue = 1.0
        alphaStepper.minimumValue = 0.0
        alphaStepper.stepValue = 0.1
        
        navigationItem.title = crayon.name
        warningLabel.isHidden = true
        defaultState()
    }
    
    private func areYouANumber(mister str: String) -> Bool{
        if str.count < 1{
            return false
        }
        
        var isANumber = true
        let tempStr = str.components(separatedBy: ".").joined()
        
        for character in tempStr{
            if !character.isNumber{
                isANumber = false
            }
        }
        
        return isANumber
    }
    
    private func areYouAProperValue(miss str: String) -> Bool{
        guard let strNum = Float(str) else{
            return false
        }
        if strNum <= 1.0 && strNum >= 0.0 {
            return true
        } else {
            return false
        }
    }
    
    private func defaultState(){
        guard let crayon = colour else{
            fatalError("Could not unwrap colour.")
        }
        alpha = 1
        stepperLabel.text = "Alpha: \(alpha)"
        redSlider.value = (Float(crayon.red) / 255)
        blueSlider.value = (Float(crayon.blue) / 255)
        greenSlider.value = (Float(crayon.green) / 255)
        displayRed(with: redSlider.value)
        displayGreen(with: greenSlider.value)
        displayBlue(with: blueSlider.value)
        alphaStepper.value = alpha
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255, alpha: CGFloat(alpha))
    }
    
    private func displayRed(with num: Float){
        
        if baseSegmentedController.selectedSegmentIndex == 0{
            redTextField.placeholder = "Red: \(String(format: "%.2f", num))"
        } else if baseSegmentedController.selectedSegmentIndex == 1{
            let number = String(Int(num * 255), radix: 16).uppercased()
            redTextField.placeholder = "Red: \(number)"
        }
    }
    
    private func displayGreen(with num: Float){
        if baseSegmentedController.selectedSegmentIndex == 0{
            greenTextField.placeholder = "Green: \(String(format: "%.2f", num))"
        } else if baseSegmentedController.selectedSegmentIndex == 1{
            let number = String(Int(num * 255), radix: 16).uppercased()
            greenTextField.placeholder = "Green: \(number)"
        }
    }
    
    private func displayBlue(with num: Float){
        if baseSegmentedController.selectedSegmentIndex == 0{
            blueTextField.placeholder = "Blue: \(String(format: "%.2f", num))"
        } else if baseSegmentedController.selectedSegmentIndex == 1{
            let number = String(Int(num * 255), radix: 16).uppercased()
            blueTextField.placeholder = "Blue: \(number)"
        }
    }
    
    // MARK: Actions
    
    @IBAction func sliderHasSlided(_ sender: UISlider){
        switch sender{
        case redSlider:
            displayRed(with: redSlider.value)
        case greenSlider:
            displayGreen(with: greenSlider.value)
        case blueSlider:
            displayBlue(with: blueSlider.value)
        default:
            break
        }
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alpha))
    }
    
    @IBAction func stepperHasStepped(_ sender: UIStepper){
        alpha = alphaStepper.value
        stepperLabel.text = "Alpha: \(String(format: "%.1f",alpha))"
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alpha))
    }
    
    @IBAction func resetButtonWasPressed(_ sender: UIBarButtonItem){
        defaultState()
    }
    
    @IBAction func segmentedControlEngaged(_ sender: UISegmentedControl){
        displayRed(with: redSlider.value)
        displayGreen(with: greenSlider.value)
        displayBlue(with: blueSlider.value)
    }
    
}

// MARK: TextField Delegate Methods
extension ColourViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let textFieldText = textField.text else{
            return false
        }
        
        warningLabel.text = ""
        warningLabel.isHidden = true
        
        if areYouANumber(mister: textFieldText) && areYouAProperValue(miss: textFieldText){
            switch textField{
            case redTextField:
                redSlider.value = Float(textFieldText) ?? 0.0
                displayRed(with: redSlider.value)
            case greenTextField:
                greenSlider.value = Float(textFieldText) ?? 0.0
                displayGreen(with: greenSlider.value)
            case blueTextField:
                blueSlider.value = Float(textFieldText) ?? 0.0
                displayBlue(with: blueSlider.value)
            default:
                break
            }
        } else {
            warningLabel.isHidden = false
            warningLabel.text = "Your input must be a number between 0 and 1."
        }
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alpha))
        textField.resignFirstResponder()
        textField.text = ""
        
        return true
    }
}
