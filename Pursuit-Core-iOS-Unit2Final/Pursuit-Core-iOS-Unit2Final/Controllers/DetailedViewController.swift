//
//  DetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Olimpia on 12/3/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
   
    var detailedCrayon: Crayon?
    
    @IBOutlet weak var clickedCrayonName: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLable: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      clickedCrayonName.text = detailedCrayon?.name
        view.backgroundColor = UIColor(displayP3Red: CGFloat((detailedCrayon?.red)! / 255), green: CGFloat((detailedCrayon?.green)! / 255), blue: CGFloat((detailedCrayon?.blue)! / 255), alpha: 1.0)
        
        redSlider.value = Float(Int(detailedCrayon!.red / 255))
        redLabel.text = "0"
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0

        greenSlider.value = Float(Int(detailedCrayon!.green / 255))
        greenLabel.text = "0"
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
       
        blueSlider.value = Float(Int(detailedCrayon!.blue / 255))
        blueLable.text = "0"
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
     
        alphaLabel.text = "Default"
        alphaStepper.stepValue = 0.2
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        
       }
   
    @IBAction func redValueChande(_ sender: Any) {
        redLabel.text! = String(redSlider.value)
     
        view.backgroundColor = UIColor(displayP3Red: CGFloat((redSlider.value)), green: CGFloat((detailedCrayon?.green)! / 255), blue: CGFloat((detailedCrayon?.blue)! / 255), alpha: 1.0)
        
    }
    
    
    @IBAction func greenValueChange(_ sender: Any) {
        greenLabel.text! = String(greenSlider.value)
        view.backgroundColor = UIColor(displayP3Red: CGFloat((detailedCrayon?.red)! / 255), green: CGFloat((greenSlider.value)), blue: CGFloat((detailedCrayon?.blue)! / 255), alpha: 1.0)
        
    }
    
    
    @IBAction func blueValueChange(_ sender: Any) {
        blueLable.text! = String(blueSlider.value)
        view.backgroundColor = UIColor(displayP3Red: CGFloat((detailedCrayon?.red)! / 255), green: CGFloat((detailedCrayon?.green)! / 255), blue: CGFloat((blueSlider.value)), alpha: 1.0)
        
        
    }
    
    
    @IBAction func alphaSteperChange(_ sender: Any) {
        alphaLabel.text! = String(alphaStepper.value)
        view.backgroundColor = UIColor(displayP3Red: CGFloat((detailedCrayon?.red)! / 255), green: CGFloat((detailedCrayon?.green)! / 255), blue: CGFloat((detailedCrayon?.blue)! / 255), alpha: CGFloat(alphaStepper!.value))
        
    }
    
    
    @IBAction func restartButton(_ sender: Any) {
        
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat((detailedCrayon?.red)! / 255), green: CGFloat((detailedCrayon?.green)! / 255), blue: CGFloat((detailedCrayon?.blue)! / 255), alpha: 1.0)
        
      
        redSlider.value = Float(Int(detailedCrayon!.red / 255))
        redLabel.text = "0"
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
     
        greenSlider.value = Float(Int(detailedCrayon!.green / 255))
        greenLabel.text = "0"
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
      
        
        blueSlider.value = Float(Int(detailedCrayon!.blue / 255))
        blueLable.text = "0"
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
       
        alphaLabel.text = "Default"
        alphaStepper.stepValue = 0.1
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        
        
    }
    
    
    

}



