//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Biron Su on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var colors: Crayon?
    var red = 0.0
    var blue = 0.0
    var green = 0.0
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let colors = colors {
            red = colors.red
            blue = colors.blue
            green = colors.green
        }
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.stepValue = 0.1
        setUp()
    }
    private func setUp() {
            guard let colors = colors else {fatalError("colors is nil")}
            colorName.text = colors.name
            redSlider.value = Float(colors.red)
            redLabel.text = "red: \(redSlider.value)"
            greenSlider.value = Float(colors.green)
            greenLabel.text = "green: \(greenSlider.value)"
            blueSlider.value = Float(colors.blue)
            blueLabel.text = "blue: \(blueSlider.value)"
            alphaLabel.text = "alpha: \(alphaStepper.value)"
            view.backgroundColor = UIColor(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: CGFloat(alphaStepper.value))
    }

    @IBAction func redChanged(_ sender: UISlider) {
        colors?.red = Double(sender.value)
        setUp()
    }
    @IBAction func greenChanged(_ sender: UISlider) {
        colors?.green = Double(sender.value)
        setUp()
    }
    @IBAction func blueChanged(_ sender: UISlider) {
        colors?.blue = Double(sender.value)
        setUp()
    }
    @IBAction func alphaChanged(_ sender: UIStepper) {
        alphaStepper.value = sender.value
        setUp()
    }
    @IBAction func resetButton(_ sender: UIButton) {
        colors?.red = red
        colors?.blue = blue
        colors?.green = green
        setUp()
        
    }
}
