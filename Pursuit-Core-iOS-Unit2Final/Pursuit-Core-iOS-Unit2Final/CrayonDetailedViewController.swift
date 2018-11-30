//
//  CrayonDetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Elizabeth Peraza  on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailedViewController: UIViewController {

  var crayonColorInfo: Crayon!
  
 
  @IBOutlet weak var colorName: UILabel!
  
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var redSlider: UISlider!
  
  @IBOutlet weak var blueLabel: UILabel!
  @IBOutlet weak var blueSlider: UISlider!

  
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var greenSlider: UISlider!

  
  @IBOutlet weak var alphaLabel: UILabel!
  @IBOutlet weak var alphaStepper: UIStepper!

  @IBOutlet weak var resetButton: UIButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()

    setInitialColorInDetail()
    sliderAction()
    stepperAction()

  }
   
  
  func setInitialColorInDetail() {
    
    colorName.text = crayonColorInfo.name
    
    view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayonColorInfo.red), green: (CGFloat(crayonColorInfo.green)), blue: (CGFloat(crayonColorInfo.blue)), alpha: 1.0)
    
    redLabel.text = "red: \(crayonColorInfo.red)"
    
    blueLabel.text = "blue: \(crayonColorInfo.blue)"
    
    greenLabel.text = "green: \(crayonColorInfo.green)"
    
    alphaLabel.text = "alpha"
    
  }
  
  func sliderAction(){
    redLabel.text = "red: \(crayonColorInfo.red)"
    redSlider.value = 0
    redSlider.minimumValue = 0
    redSlider.maximumValue = 1
  }
  
  func stepperAction(){
    alphaStepper.value = 1.0
    alphaStepper.minimumValue = 0.0
    alphaStepper.maximumValue = 1.0
    alphaStepper.stepValue = 0.1
  }
  

  
  
  @IBAction func redSliderAdjusts(_ sender: UISlider) {
    redLabel.text = "red: \((sender.value).description)"
    let newRedValue = sender.value
    
    view.backgroundColor = UIColor.init(displayP3Red: CGFloat(newRedValue), green: (CGFloat(crayonColorInfo.green)), blue: (CGFloat(crayonColorInfo.blue)), alpha: 1.0)
    
  }
  
  @IBAction func blueSliderAdjusts(_ sender: UISlider) {
    blueLabel.text = "blue: \((sender.value).description)"
    let newBlueValue = sender.value
    
    view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayonColorInfo.red), green: (CGFloat(newBlueValue)), blue: (CGFloat(crayonColorInfo.green)), alpha: 1.0)
  }
  
  
  @IBAction func greenSliderAdjusts(_ sender: UISlider) {
    greenLabel.text = "green: \((sender.value).description)"
    let newGreenValue = sender.value
    
    view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayonColorInfo.red), green: (CGFloat(crayonColorInfo.blue)), blue: (CGFloat(newGreenValue)), alpha: 1.0)
  }
  
  
  @IBAction func alphaStepperAdjustment(_ sender: UIStepper) {
    alphaLabel.text = "alpha: \((sender.value).description)"
    let newStepperValue = sender.value
    
    view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayonColorInfo.red), green: (CGFloat(crayonColorInfo.green)), blue: (CGFloat(crayonColorInfo.blue)), alpha: CGFloat(newStepperValue))
    
  }
  
 
  @IBAction func resetToInitalColor(_ sender: UIButton) {
    view.backgroundColor = UIColor.init(displayP3Red: CGFloat(crayonColorInfo.red), green: (CGFloat(crayonColorInfo.green)), blue: (CGFloat(crayonColorInfo.blue)), alpha: CGFloat(1.0))
    
  
  }
  
}
