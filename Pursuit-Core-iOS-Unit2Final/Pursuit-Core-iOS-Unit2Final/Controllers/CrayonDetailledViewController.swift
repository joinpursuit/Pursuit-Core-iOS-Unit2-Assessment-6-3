//
//  CrayonDetailledViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Ashli Rankin on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailledViewController: UITableViewController {
    @IBOutlet weak var viewWillDisplayLabelAndColor: UIView!
  
   // Control Outlets
    @IBOutlet weak var crayonColorRedSlider: UISlider!
    @IBOutlet weak var firstSliderLabel: UILabel!
    @IBOutlet weak var crayonColorGreenSlider: UISlider!
    @IBOutlet weak var secondSliderLabel: UILabel!
    @IBOutlet weak var crayonColorBlueSlider: UISlider!
    @IBOutlet weak var thirdSliderLabel: UILabel!
    @IBOutlet weak var stepperControl: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var crayonName: UILabel!
    
    var crayonNames = String()
    var crayonColorRed = Double()
    var  crayonColorBlue = Double()
    var  crayonColorGreen = Double()
    var crayonHexValues = String()
    var currentRedValue = Float()
    var currentGreenValue = Float()
    var currentBlueValue = Float()
    var currentAlpha = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      setsInitialValuesForControls()
        updateTheUi()
       stepperControl.value = 1
        stepperLabel.text = "1"
    }
    // Control Actions
    @IBAction func backButton(_ sender:UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func stepperChanged(_ sender: UIStepper) {
        stepperControl.maximumValue = 1
        stepperControl.minimumValue = 0
        stepperControl.stepValue = 0.1
        currentAlpha = CGFloat(stepperControl.value)
        stepperLabel.text = "\(currentAlpha)"
        viewWillDisplayLabelAndColor.backgroundColor = UIColor(displayP3Red: CGFloat(currentRedValue), green: CGFloat(currentGreenValue), blue: CGFloat(currentBlueValue), alpha: currentAlpha)
    }
    @IBAction func changesColorsWhenClicked(_ sender: UISlider) {
        switch sender {
        case crayonColorRedSlider:
            crayonColorRedSlider.maximumValue = 1.0
            firstSliderLabel.text = "\(crayonColorRedSlider.value)"
            currentRedValue = crayonColorRedSlider.value
           
        case crayonColorGreenSlider:
            crayonColorGreenSlider.maximumValue = 1.0
            secondSliderLabel.text = "\(crayonColorGreenSlider.value)"
           currentGreenValue = crayonColorGreenSlider.value
          
        case crayonColorBlueSlider:
            crayonColorBlueSlider.maximumValue = 1.0
            currentBlueValue = crayonColorBlueSlider.value
     thirdSliderLabel.text = "\(crayonColorBlueSlider.value)"
     
            
        default:
           print("d")
        }
        viewWillDisplayLabelAndColor.backgroundColor = UIColor(displayP3Red: CGFloat(currentRedValue), green: CGFloat(currentGreenValue), blue: CGFloat(currentBlueValue), alpha: currentAlpha)
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
    setsInitialValuesForControls()
    }
    
    func updateTheUi(){
        viewWillDisplayLabelAndColor.backgroundColor = UIColor(displayP3Red: CGFloat(crayonColorRed)/255, green: CGFloat(crayonColorGreen)/255, blue: CGFloat(crayonColorBlue)/255, alpha: 1)
           crayonName.text = crayonNames
        if crayonNames == "Black"{
            crayonName.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
           
        }
    }
    func setsInitialValuesForControls(){
        crayonColorRedSlider.value = Float(crayonColorRed)/255
        firstSliderLabel.text = "\(crayonColorRed/255)"
        crayonColorGreenSlider.value = Float(crayonColorGreen)/255
        secondSliderLabel.text = "\(crayonColorGreen/255)"
        crayonColorBlueSlider.value = Float(crayonColorBlue)/255
        thirdSliderLabel.text = "\(crayonColorBlue/255)"
        stepperControl.value = 0.0
        stepperLabel.text = "\(currentAlpha)"
        updateTheUi()
    }
}
