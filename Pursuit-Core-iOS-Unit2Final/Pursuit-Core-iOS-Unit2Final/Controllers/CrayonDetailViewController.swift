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
    
    @IBOutlet weak var colorCell: UITableViewCell!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    
    @IBAction func redSliderColor(_ sender: UISlider) {
       colorCell.backgroundColor = UIColor(red: CGFloat(crayon!.red / 255), green: CGFloat(crayon!.green / 255), blue: CGFloat(crayon!.blue / 255), alpha: 1)
    }
    
    @IBAction func greenSliderColor(_ sender: UISlider) {
        colorCell.backgroundColor = UIColor(red: CGFloat(crayon!.red / 255), green: CGFloat(crayon!.green / 255), blue: CGFloat(crayon!.blue / 255), alpha: 1)
    }
    
    @IBAction func blueSliderColor(_ sender: UISlider) {
        colorCell.backgroundColor = UIColor(red: CGFloat(crayon!.red / 255), green: CGFloat(crayon!.green / 255), blue: CGFloat(crayon!.blue / 255), alpha: 1)
        
    }
    
    @IBAction func alphaStepperChange(_ sender: UIStepper) {
       stepperLabel.text = Double(sender.value).description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        title = crayon?.name
    }
    
    private func updateUI(){
        redLabel.text = "Red Value: \(Float(crayon!.red/255))"
        greenLabel.text = "Green Value: \(Float(crayon!.green/255))"
        blueLabel.text = "Blue Value: \(Float(crayon!.blue)/255)"
        colorCell.backgroundColor = UIColor(red: CGFloat(crayon!.red / 255), green: CGFloat(crayon!.green / 255), blue: CGFloat(crayon!.blue / 255), alpha: 1)
       
        
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 0.1
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 0.1
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 0.1
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        stepperLabel.text = "0.0"
    }
}
