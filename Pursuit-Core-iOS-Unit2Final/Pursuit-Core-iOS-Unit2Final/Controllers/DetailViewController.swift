//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Andréa Evans on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var crayonNameLabel: UILabel!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var redValueSlider: UISlider!
    
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var greenValueSlider: UISlider!
    
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var blueValueSlider: UISlider!
    
    @IBOutlet weak var alphaValueLabel: UILabel!
    @IBOutlet weak var alphaValueStepper: UIStepper!
    
    
    @IBOutlet weak var colorButton: UIButton!
    
    var crayonColor: Crayon!
    
    var redValue: CGFloat!, greenValue: CGFloat!, blueValue: CGFloat!, alphaValue: CGFloat!
    
//    var updatedRedValue: CGFloat!, updatedGreenValue: CGFloat!, updatedBlueValue: CGFloat!, updatedAlphaValue: CGFloat!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValue = CGFloat(crayonColor.red)
        greenValue = CGFloat(crayonColor.green)
        blueValue = CGFloat(crayonColor.blue)
        alphaValue = 1.0
        
        redValueSlider.value = Float (CGFloat(redValue/CGFloat(255)))
         greenValueSlider.value = Float (CGFloat(redValue/CGFloat(255)))
         blueValueSlider.value = Float (CGFloat(redValue/CGFloat(255)))
        
        
        view.backgroundColor = UIColor(red: CGFloat(redValue)/CGFloat(255), green: CGFloat(greenValue)/CGFloat(255), blue: CGFloat(blueValue)/CGFloat(255), alpha: alphaValue)
    }
    
    @IBAction func resetButtonPressed() {
        
    }
  

}
