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
    
    
    //    var sliderFont: Float = 12 {
//        didSet {
//            fontSize.text = "Preview Font Size: \(round(sliderControl.value))"
//        }
//    }
    
    var currentColor: Float = 50.0 {
        didSet {
            self.view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value / 255), green: CGFloat(greenSlider.value / 255), blue: CGFloat(blueSlider.value / 255), alpha: 1.0)
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
        redSliderValues()
        greenSliderValues()
        blueSliderValues()
        alphaSliderValues()
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
        greenSlider.maximumValue = 300.0
        greenSlider.value = 50.0
    }
    
    func alphaSliderValues() {
        alphaSlider.minimumValue = 0.1
        alphaSlider.maximumValue = 1.0
        alphaSlider.value = 0.2
    }
    
    func alphaStepperValues() {
        alphaStepper.minimumValue = 0.1
        alphaStepper.maximumValue = 1.0
        alphaStepper.value = 1.0
        alphaStepper.stepValue = 0.1
    }
    
    
    
    
    @IBAction func redAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(sender.value / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)

    }
    
    
    @IBAction func greenAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(sender.value / 255), blue: CGFloat(crayon.blue / 255), alpha: 1.0)
    }
    
    @IBAction func blueAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(sender.value / 255), alpha: 1.0)
    }
    
    @IBAction func alphaAction(_ sender: UISlider) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: CGFloat(sender.value))
        
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        self.view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red / 255), green: CGFloat(crayon.green / 255), blue: CGFloat(crayon.blue / 255), alpha: CGFloat(sender.value))
    }
    
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
}
