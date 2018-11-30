//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Diego Estrella III on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UITableViewController {

    var crayon: Crayon?
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redCell: UITableViewCell!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenCell: UITableViewCell!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueCell: UITableViewCell!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    
    @IBAction func redSliderColor(_ sender: UISlider) {
    
    }
    
    @IBAction func greenSliderColor(_ sender: UISlider) {
        
    }
    
    @IBAction func blueSliderColor(_ sender: UISlider) {
        
    }
    
    @IBAction func alphaStepperChange(_ sender: UIStepper) {
       stepperLabel.text = Double(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    private func updateUI(){
        
        
        
        
        
        redLabel.text = "Color: \(crayon!.name), Red Value: \(crayon!.red)"
        greenLabel.text = "Color: \(crayon!.name), Green Value: \(crayon!.green)"
        blueLabel.text = "Color: \(crayon!.name), Blue Value: \(crayon!.blue)"
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        stepperLabel.text = "0.0"
    }
    
}
