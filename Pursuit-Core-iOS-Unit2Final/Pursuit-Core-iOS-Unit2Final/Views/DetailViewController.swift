//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Amy Alsaydi on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    
    @IBOutlet var allLabels: [UILabel]!
    
    
    var crayon: Crayon?
    var labelAlpha = 1.0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        colorNameLabel.text = crayon?.name
        
        configureControls()
        updateBackgroundandLabelColors()

    }
    
    func updateBackgroundandLabelColors() {
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaStepper.value))
        
        if redSlider.value < 0.5 && greenSlider.value < 0.5 && blueSlider.value < 0.5 || alphaStepper.value < 0.5 {
            allLabels.map {$0.textColor = .white}
        } else {
            allLabels.map {$0.textColor = .black}
        }
        
    }
    
    func configureControls() {
        guard let selectedCrayon = crayon else { return }
        
        // red
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider.value = Float(selectedCrayon.red/255)
        redLabel.text = String(format: "%.2f", redSlider.value)
        //redLabel.alpha = CGFloat(alphaStepper.value)
        
        // green
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        greenSlider.value = Float(selectedCrayon.green/255)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        //greenLabel.alpha = CGFloat(alphaStepper.value)
        
        //blue
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
        blueSlider.value = Float(selectedCrayon.blue/255)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        //blueLabel.alpha = CGFloat(alphaStepper.value)
        
        //alpha
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.stepValue = 0.1
        alphaStepper.value = 1.0
        alphaLabel.text = "Alpha: \(String(format: "%.1f", alphaStepper.value))"
        //alphaLabel.alpha = CGFloat(alphaStepper.value)
        
        
    }
    
    // Actions
    
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redLabel.text = String(format: "%.2f", sender.value)
        updateBackgroundandLabelColors()
        
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenLabel.text = String(format: "%.2f", sender.value)
        updateBackgroundandLabelColors()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueLabel.text = String(format: "%.2f", sender.value)
               updateBackgroundandLabelColors()
    }
    
    @IBAction func alphaStepperChanged(_ sender: UIStepper) {
        alphaLabel.text = "Alpha: \(String(format: "%.1f", sender.value))"
        updateBackgroundandLabelColors()
    }
    
    @IBAction func reset(_ sender: UIButton) {
        configureControls()
        updateBackgroundandLabelColors()
        allLabels.map {$0.textColor = .black}
        
    }
    
    
}
