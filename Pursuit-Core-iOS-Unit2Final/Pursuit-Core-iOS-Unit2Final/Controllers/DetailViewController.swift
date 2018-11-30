//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Matthew Huie on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    var crayons: Crayon!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayons.red/255), green: CGFloat(crayons.green/255), blue: CGFloat(crayons.blue/255), alpha: CGFloat(alphaStepper!.value))
        updateUI()
       

    }
    
    private func updateUI() {
        colorNameLabel.text = crayons.name
        redSlider.setValue(Float(crayons.red), animated: true)
        greenSlider.setValue(Float(crayons.green), animated: true)
        blueSlider.setValue(Float(crayons.blue), animated: true)
        alphaStepper.value = 1
        redValueLabel.text = "Red: \(redSlider.value)"
        greenValueLabel.text = "Green: \(greenSlider.value)"
        blueValueLabel.text = "Blue: \(blueSlider.value)"
        alphaValueLabel.text = "Alpha: \(alphaStepper.value)"
    }
    
    
    
    
    @IBAction func sliderChanged (sender: AnyObject) {
        redValueLabel.text = "Red: \(redSlider.value)"
        greenValueLabel.text = "Green: \(greenSlider.value)"
        blueValueLabel.text = "Blue: \(blueSlider.value)"
        alphaValueLabel.text = "Alpha: \(alphaStepper.value)"
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider!.value)/255, green: CGFloat(greenSlider!.value)/255, blue: CGFloat(blueSlider!.value)/255, alpha: CGFloat(alphaStepper!.value))
        
        
    }
    
    @IBAction func resetValues (sender: UIButton) {
        updateUI()
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayons.red/255), green: CGFloat(crayons.green/255), blue: CGFloat(crayons.blue/255), alpha: CGFloat(alphaStepper!.value))
    }

   
}
