//
//  crayonViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Pursuit on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class crayonViewController: UIViewController {

    var crayons: Crayon!
    
    @IBOutlet weak var StepperLabel: UILabel!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider3: UISlider!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider1.value = Float(crayons.red/255)
        slider2.value = Float(crayons.green/255)
        slider3.value = Float(crayons.blue/255)
        myStepper.value = 1
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayons.red/255), green: CGFloat(crayons.green/255), blue: CGFloat(crayons.blue/255), alpha: 1)
        
        nameLabel.text = crayons.name
        label1.text = "Red Value \(crayons.red/255)"
        label2.text = "Blue Value \(crayons.blue/255)"
        label3.text = "Green Value \(crayons.green/255)"
        StepperLabel.text = "Steppers Value = \(myStepper.value)"
    }
    
    
    @IBAction func stepperpressed(_ sender: UIStepper) {
        
        let stepper = myStepper.value
        StepperLabel.text = "\(stepper)"
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(slider1.value), green: CGFloat(slider2.value), blue: CGFloat(slider3.value), alpha:CGFloat(stepper))
    }
    
    
    @IBAction func ChangeColor(_ sender: UISlider) {
        
        
        label1.text = "Red Value \(slider1.value)"
        label2.text = "Green Value \(slider2.value)"
        label3.text = "Blue Value \(slider3.value)"
        StepperLabel.text = "Stepper Current Value \(myStepper.value)"
        
        let currentRedValue = slider1.value
        let currentGreenValue = slider2.value
        let currentBlueValue = slider3.value
        let stepper = myStepper.value

        view.backgroundColor = UIColor(displayP3Red: CGFloat(currentRedValue), green: CGFloat(currentGreenValue), blue: CGFloat(currentBlueValue), alpha:CGFloat(stepper))
    }

    @IBAction func resetButton(_ sender: UIButton) {
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayons.red/255), green: CGFloat(crayons.green/255), blue: CGFloat(crayons.blue/255), alpha: 1)
        slider1.value = Float(crayons.red/255)
        slider2.value = Float(crayons.green/255)
        slider3.value = Float(crayons.blue/255)
        myStepper.value = 1
    }
    
    

}
