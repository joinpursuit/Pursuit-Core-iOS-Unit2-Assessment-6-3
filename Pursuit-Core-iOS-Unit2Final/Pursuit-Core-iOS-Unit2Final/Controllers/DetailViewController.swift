//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Oscar Victoria Gonzalez  on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var cray: Crayon!
    
    @IBOutlet weak var crayonNameLabel: UILabel!
    
    @IBOutlet weak var redSliderLabel: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    
    @IBOutlet weak var greenSliderLabel: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var blueSliderLabel: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    

    
    var redSlider: Float = 0.0 {
        didSet {
            redLabel.text = redSliderLabel.value.description
        }
    }
    
    var greenSlider: Float = 0.0 {
        didSet {
            greenLabel.text = greenSliderLabel.value.description
        }
    }
    
    var blueSlider: Float = 0.0 {
        didSet {
            blueLabel.text = blueSliderLabel.value.description
        }
    }
    
    var alpha: Float = 0.0 {
        didSet {
            alphaLabel.text = alphaStepper.value.description
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuredRedSlider()
        configuredGreenSlider()
        configuredBlueSlider()
        configuredStepper()
        
    }
    
    func updateUI(for crayon: Crayon) {
        guard let theCrayon = cray else {
            fatalError("error")
        }
        let aColor = UIColor(red: CGFloat(crayon.red)/CGFloat(255),
                                              green: CGFloat(crayon.green)/CGFloat(255),
                                              blue: CGFloat(crayon.blue)/CGFloat(255),
                                              alpha: 1)
        view.backgroundColor = aColor
        title = theCrayon.name
        crayonNameLabel.text = crayon.name
    }
    
    func configuredRedSlider() {
        redSliderLabel.minimumValue = 0.0
        redSliderLabel.maximumValue = 1.0
        redSliderLabel.value = Float(CGFloat(cray.red)/CGFloat(255))
    }
    
    func configuredGreenSlider() {
        greenSliderLabel.maximumValue = 0.0
        greenSliderLabel.maximumValue = 1.0
        greenSliderLabel.value = Float(CGFloat(cray.green)/CGFloat(255))
    }
    
    func configuredBlueSlider() {
        blueSliderLabel.minimumValue = 0.0
        blueSliderLabel.maximumValue = 1.0
        blueSliderLabel.value = Float(CGFloat(cray.blue)/CGFloat(255))
    }
    
    func configuredStepper() {
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.stepValue = 0.1
        alphaStepper.value = 1.0
    }
    
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redSlider = sender.value
        let backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(0),blue: CGFloat(0),alpha:1.0)
        view.backgroundColor = backgroundColor
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenSlider = sender.value
        let backgroundColor = UIColor(red: CGFloat(0), green: CGFloat(sender.value),blue: CGFloat(0),alpha:1.0)
        view.backgroundColor = backgroundColor
    }
    
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueSlider = sender.value
        let backgroundColor = UIColor(red: CGFloat(0), green: CGFloat(),blue: CGFloat(sender.value),alpha:1.0)
        view.backgroundColor = backgroundColor
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        alpha = Float(sender.value)
        let backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(sender.value),blue: CGFloat(sender.value),alpha:1.0)
        view.backgroundColor = backgroundColor
        
    }
    
    
    @IBAction func reset(_ sender: UIButton) {
        redSliderLabel.value = Float(CGFloat(cray.red)/CGFloat(255))
        blueSliderLabel.value = Float(CGFloat(cray.blue)/CGFloat(255))
        greenSliderLabel.value = Float(CGFloat(cray.green)/CGFloat(255))
        alphaStepper.value = 1.0
        alphaLabel.text = 1.0.description
        
        let color = UIColor(red: CGFloat(cray.red)/CGFloat(255),
        green: CGFloat(cray.green)/CGFloat(255),
        blue: CGFloat(cray.blue)/CGFloat(255),
        alpha: 1)
       
        view.backgroundColor = color
    }
    
}
