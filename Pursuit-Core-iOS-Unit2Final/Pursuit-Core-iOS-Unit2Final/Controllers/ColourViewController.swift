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
        redLabel.text = "Red: \(crayon.red)"
        greenLabel.text = "Green: \(crayon.green)"
        blueLabel.text =  "Blue: \(crayon.blue)"
        stepperLabel.text = "Alpha: \(alpha)"
        redSlider.maximumValue = 1.0
        redSlider.minimumValue = 0.0
        redSlider.value = Float(crayon.red) / 255
        blueSlider.maximumValue = 1.0
        blueSlider.minimumValue = 0.0
        blueSlider.value = Float(crayon.blue) / 255
        greenSlider.maximumValue = 1.0
        greenSlider.minimumValue = 0.0
        greenSlider.value = Float(crayon.green) / 255
        alphaStepper.maximumValue = 1.0
        alphaStepper.minimumValue = 0.0
        alphaStepper.value = alpha
        alphaStepper.stepValue = 0.1
        navigationItem.title = crayon.name
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255, alpha: CGFloat(alpha))
    }
}
