//
//  ColourViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Cameron Rivera on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ColourViewController: UIViewController {
    
    // MARK: Outlets of Colour View Controller
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var resetButton: UIBarButtonItem!
    
    // MARK: Properties of Colour View Controller
    var colour: Crayon?
    var alpha: Double = 1
    
    // MARK: LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    // MARK: Helper Methods
    private func setUp(){
        guard let crayon = colour else{
            fatalError("Could not unwrap colour.")
        }
        redLabel.text = "Red: \(String(format: "%.2f", crayon.red / 255))"
        greenLabel.text = "Green: \(String(format: "%.2f", crayon.green / 255))"
        blueLabel.text =  "Blue: \(String(format: "%.2f", crayon.blue / 255))"
        stepperLabel.text = "Alpha: \(String(format: "%.1f",alpha))"
        redSlider.maximumValue = 1.0
        redSlider.minimumValue = 0.0
        redSlider.value = (Float(crayon.red) / 255)
        blueSlider.maximumValue = 1.0
        blueSlider.minimumValue = 0.0
        blueSlider.value = (Float(crayon.blue) / 255)
        greenSlider.maximumValue = 1.0
        greenSlider.minimumValue = 0.0
        greenSlider.value = (Float(crayon.green) / 255)
        alphaStepper.maximumValue = 1.0
        alphaStepper.minimumValue = 0.0
        alphaStepper.value = alpha
        alphaStepper.stepValue = 0.1
        navigationItem.title = crayon.name
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255, alpha: CGFloat(alpha))
    }
    
    @IBAction func sliderHasSlided(_ sender: UISlider){
        switch sender{
        case redSlider:
            redLabel.text = "Red: \(String(format: "%.2f", redSlider.value))"
        case greenSlider:
            greenLabel.text = "Green: \(String(format: "%.2f", greenSlider.value))"
        case blueSlider:
            blueLabel.text = "Blue: \(String(format: "%.2f", blueSlider.value))"
        default:
            break
        }
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alpha))
    }
    
    @IBAction func stepperHasStepped(_ sender: UIStepper){
        alpha = alphaStepper.value
        stepperLabel.text = "Alpha: \(String(format: "%.1f",alpha))"
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alpha))
    }
    
    @IBAction func resetButtonWasPressed(_ sender: UIBarButtonItem){
        guard let crayon = colour else{
            fatalError("Could not unwrap colour.")
        }
        alpha = 1
        redLabel.text = "Red: \(String(format: "%.2f", crayon.red / 255))"
        greenLabel.text = "Green: \(String(format: "%.2f", crayon.green / 255))"
        blueLabel.text =  "Blue: \(String(format: "%.2f", crayon.blue / 255))"
        stepperLabel.text = "Alpha: \(alpha)"
        redSlider.value = (Float(crayon.red) / 255)
        blueSlider.value = (Float(crayon.blue) / 255)
        greenSlider.value = (Float(crayon.green) / 255)
        alphaStepper.value = alpha
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255, alpha: CGFloat(alpha))
    }
}
