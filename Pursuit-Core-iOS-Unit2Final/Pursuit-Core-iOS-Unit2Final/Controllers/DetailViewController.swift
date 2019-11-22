//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Maitree Bain on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var redTextLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenTextLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueTextLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaTextLabel: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!

    
    var crayon: Crayon!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
        redSliderValues()
        greenSliderValues()
        blueSliderValues()
        alphaSliderValues()
        alphaStepperValues()
    }
    
    
    func redSliderValues() {
        redSlider.minimumValue = 1.0
        redSlider.maximumValue = 300.0
        redSlider.value = 50.0
    }

    func greenSliderValues() {
        greenSlider.minimumValue = 1.0
        greenSlider.maximumValue = 300.0
        greenSlider.value = 50.0
    }
    
    func blueSliderValues() {
        blueSlider.minimumValue = 1.0
        blueSlider.maximumValue = 300.0
        blueSlider.value = 50.0
    }
    
    func alphaSliderValues() {
        alphaSlider.minimumValue = 0.1
        alphaSlider.maximumValue = 1.0
        alphaSlider.value = 0.1
    }
    
    func alphaStepperValues() {
        alphaStepper.minimumValue = 0.1
        alphaStepper.maximumValue = 1.0
        alphaStepper.value = 0.1
        alphaStepper.stepValue = 0.1
    }
    
    
    
    
    @IBAction func redAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(sender.value / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
        redTextLabel.text = "Red: \(round(sender.value))"

    }
    
    
    @IBAction func greenAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(sender.value / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
        greenTextLabel.text = "Green: \(round(sender.value))"
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(sender.value / 255), alpha: 1.0)
        blueTextLabel.text = "Blue: \(round(sender.value))"
    }
    
    @IBAction func alphaAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: CGFloat(sender.value))
        alphaTextLabel.text = "Alpha: \(sender.value)"
        alphaStepper.value = Double(sender.value)
        
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: CGFloat(sender.value))
        alphaTextLabel.text = "Alpha: \(sender.value)"
        alphaSlider.value = Float(sender.value)
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
        redSliderValues()
        greenSliderValues()
        blueSliderValues()
        alphaSliderValues()
        alphaStepperValues()
    }
}
