//
//  CrayonDetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jason on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    
    

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var bleuSliderLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaStepperLabel: UILabel!
    var crayon: Crayon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.maximumValue = 255
        redSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.minimumValue = 0
        alphaStepper.maximumValue = 1
        alphaStepper.minimumValue = 0
        update()

    }
    
    func update(){
        
        self.title = "\(crayon!.name)"
        alphaStepper.value = 1
        alphaStepperLabel.text = "Alpha: \(alphaStepper.value)"
        redSlider.value = Float(crayon!.red)
        redSliderLabel.text = "Red: \(redSlider.value)"
        blueSlider.value = Float(crayon!.blue)
        bleuSliderLabel.text = "Blue: \(blueSlider.value)"
        greenSlider.value = Float(crayon!.green)
        greenSliderLabel.text = "Green: \(greenSlider.value)"
        self.view.backgroundColor = UIColor.init(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(Float(alphaStepper.value)))


    }

    @IBAction func red(_ sender: UISlider) {
        self.view.backgroundColor = UIColor.init(red: CGFloat(sender.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(Float(alphaStepper.value)))

        redSliderLabel.text = "Red: \(sender.value)"
    }
    
    @IBAction func green(_ sender: UISlider) {
        self.view.backgroundColor = UIColor.init(red: CGFloat(redSlider.value/255), green: CGFloat(sender.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(Float(alphaStepper.value)))
        
        greenSliderLabel.text = "Green: \(sender.value)"

    }
    
    @IBAction func blue(_ sender: UISlider) {
        self.view.backgroundColor = UIColor.init(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(sender.value/255), alpha: CGFloat(Float(alphaStepper.value)))
        bleuSliderLabel.text = "Blue: \(sender.value)"

    }
    
    @IBAction func alpha(_ sender: UIStepper) {
        self.view.backgroundColor = UIColor.init(red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(Float(sender.value)))
        alphaStepperLabel.text = "Alpha: \(sender.value)"
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        update()
    }
}


