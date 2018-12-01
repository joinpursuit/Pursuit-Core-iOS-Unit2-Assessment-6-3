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

        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.stepValue = 0.1
        setUp()
    }
    private func setUp() {
            guard let colors = colors else {fatalError("colors is nil")}
            colorName.text = colors.name
            redSlider.setValue(Float(colors.red), animated: true)
            redLabel.text = "red: \(redSlider.value)"
            greenSlider.setValue(Float(colors.green), animated: true)
            greenLabel.text = "green: \(greenSlider.value)"
            blueSlider.setValue(Float(colors.blue), animated: true)
            blueLabel.text = "blue: \(blueSlider.value)"
            alphaLabel.text = "alpha: \(alphaStepper.value)"
            view.backgroundColor = UIColor(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: CGFloat(alphaStepper.value))
    }
    @IBAction func sliderChange(sender: AnyObject) {
        redLabel.text = "red: \(redSlider.value)"
        greenLabel.text = "green: \(greenSlider.value)"
        blueLabel.text = "blue: \(blueSlider.value)"
        alphaLabel.text = "alpha: \(alphaStepper.value)"
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: CGFloat(alphaStepper.value))

    }
    @IBAction func resetButton(_ sender: UIButton) {
        setUp()
        guard let colors = colors else { fatalError("Color is nil")}
            self.view.backgroundColor = UIColor(red: CGFloat(colors.red/255.0), green: CGFloat(colors.green/255.0), blue: CGFloat(colors.blue/255.0), alpha: CGFloat(alphaStepper.value))
    }
}
