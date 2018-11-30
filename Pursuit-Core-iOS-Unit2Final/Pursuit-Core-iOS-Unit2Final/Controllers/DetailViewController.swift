//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Nathalie  on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var aCrayon: Crayon!
    @IBOutlet weak var titleColor: UILabel!
    
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var greenValueLabel: UILabel!
    
    @IBOutlet weak var blueValueSlider: UISlider!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    
    @IBOutlet weak var alphaValueStepper: UIStepper!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setting title text
        titleColor.text = "\(aCrayon.name)"
        
        //converting color values of crayons for UIColor init later
        let convertedRed = aCrayon.red/255
        let convertedGreen = aCrayon.green/255
        let convertedBlue = aCrayon.blue/255
        
        //setting view background color
        view.backgroundColor = UIColor(displayP3Red: CGFloat(convertedRed), green: CGFloat(convertedGreen), blue: CGFloat(convertedBlue), alpha: 1)
        
        //setting label font colors
        alphaValueLabel.textColor = UIColor.black
        titleColor.textColor = UIColor.black
        redValueLabel.textColor = UIColor.black
        greenValueLabel.textColor = UIColor.black
        blueValueLabel.textColor = UIColor.black
        
        //setting label strings and object values
        redValueSlider.value = Float(convertedRed)
        redValueLabel.text = "\(convertedRed)"
        redValueSlider.minimumValue = 0
        redValueSlider.maximumValue = 1
        
        greenValueSlider.value = Float(convertedGreen)
        greenValueLabel.text = "\(convertedGreen)"
        greenValueSlider.minimumValue = 0
        greenValueSlider.maximumValue = 1
        
        blueValueSlider.value = Float(convertedBlue)
        blueValueLabel.text = "\(convertedBlue)"
        blueValueSlider.minimumValue = 0
        blueValueSlider.maximumValue = 1
        
        alphaValueStepper.stepValue = 0.1
        alphaValueStepper.value = 1
        alphaValueStepper.minimumValue = 0
        alphaValueStepper.maximumValue = 1.0
        alphaValueLabel.text = "1"
        
        
    }
        
        @IBAction func redSliderChanged(_ sender: UISlider) {
            redValueLabel.text = sender.value.description
            view.backgroundColor = UIColor(displayP3Red: CGFloat(sender.value), green: CGFloat(greenValueSlider.value), blue: CGFloat(blueValueSlider.value), alpha: CGFloat(alphaValueStepper!.value))
            
            //changing font color for readability
            if redValueSlider!.value <= 0.2 && blueValueSlider!.value <= 0.2 && greenValueSlider!.value <= 0.2 {
                alphaValueLabel.textColor = UIColor.white
                titleColor.textColor = UIColor.white
                redValueLabel.textColor = UIColor.white
                greenValueLabel.textColor = UIColor.white
                blueValueLabel.textColor = UIColor.white
            } else {
                alphaValueLabel.textColor = UIColor.black
                titleColor.textColor = UIColor.black
                redValueLabel.textColor = UIColor.black
                greenValueLabel.textColor = UIColor.black
                blueValueLabel.textColor = UIColor.black
            }
        }
        
        @IBAction func greenSliderChanged(_ sender: UISlider) {
            greenValueLabel.text = sender.value.description
            view.backgroundColor = UIColor(displayP3Red: CGFloat(redValueSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueValueSlider.value), alpha: CGFloat(alphaValueStepper!.value))
    
            //changing font color for readability
            if redValueSlider!.value <= 0.2 && blueValueSlider!.value <= 0.2 && greenValueSlider!.value <= 0.2 {
                alphaValueLabel.textColor = UIColor.white
                titleColor.textColor = UIColor.white
                redValueLabel.textColor = UIColor.white
                greenValueLabel.textColor = UIColor.white
                blueValueLabel.textColor = UIColor.white
            } else {
                alphaValueLabel.textColor = UIColor.black
                titleColor.textColor = UIColor.black
                redValueLabel.textColor = UIColor.black
                greenValueLabel.textColor = UIColor.black
                blueValueLabel.textColor = UIColor.black
            }
    }
        
        @IBAction func blueSliderChanged(_ sender: UISlider) {
            blueValueLabel.text = sender.value.description
            view.backgroundColor = UIColor(displayP3Red: CGFloat(redValueSlider.value), green: CGFloat(greenValueSlider.value), blue: CGFloat(sender.value), alpha: CGFloat(alphaValueStepper!.value))
            
            //changing font color for readability
            if redValueSlider!.value <= 0.2 && blueValueSlider!.value <= 0.2 && greenValueSlider!.value <= 0.2 {
                alphaValueLabel.textColor = UIColor.white
                titleColor.textColor = UIColor.white
                redValueLabel.textColor = UIColor.white
                greenValueLabel.textColor = UIColor.white
                blueValueLabel.textColor = UIColor.white
            } else {
                alphaValueLabel.textColor = UIColor.black
                titleColor.textColor = UIColor.black
                redValueLabel.textColor = UIColor.black
                greenValueLabel.textColor = UIColor.black
                blueValueLabel.textColor = UIColor.black
            }
        }
        
        @IBAction func stepperChanged(_ sender: UIStepper) {
            alphaValueLabel.text = sender.value.description
            view.backgroundColor = UIColor(displayP3Red: CGFloat(redValueSlider.value), green: CGFloat(greenValueSlider.value), blue: CGFloat(blueValueSlider.value), alpha: CGFloat(sender.value))
            
            //changing font color for readability
            if sender.value <= 0.3 {
                alphaValueLabel.textColor = UIColor.white
                titleColor.textColor = UIColor.white
                redValueLabel.textColor = UIColor.white
                greenValueLabel.textColor = UIColor.white
                blueValueLabel.textColor = UIColor.white
            } else {
                alphaValueLabel.textColor = UIColor.black
                titleColor.textColor = UIColor.black
                redValueLabel.textColor = UIColor.black
                greenValueLabel.textColor = UIColor.black
                blueValueLabel.textColor = UIColor.black
            }
        }
        
        @IBAction func resetValues(_ sender: UIButton) {
            viewDidLoad()
        }
        
    }

