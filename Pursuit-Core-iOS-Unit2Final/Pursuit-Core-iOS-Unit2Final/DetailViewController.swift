//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Liubov Kaper  on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var crayonColorLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var redSliderLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var greenSliderLabel: UILabel!
    
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var blueSliderLabel: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    
    
    @IBOutlet weak var alphaStepperLabel: UILabel!
    
    @IBOutlet weak var colorReset: UIButton!
    
    
    var crayon: Crayon?
    
    //    var redSliderValue: CGFloat? {
    //        didSet {
    //            updateUI()
    //        }
    //    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // configureRedSlider()
        updateUI()
        
    }
    
    func updateUI() {
        guard let colorCrayon = crayon else {
            fatalError("couldn't set crayon object, check prepare for segue")
        }
        navigationItem.title = colorCrayon.name
        crayonColorLabel?.text = colorCrayon.name
        redSliderLabel?.text = "Red: \(String(format: "%.2f", colorCrayon.red / 255.0))"
        greenSliderLabel?.text = "Green: \(String(format: "%.2f", colorCrayon.green / 255.0))"
        blueSliderLabel?.text = "Blue: \(String(format: "%.2f", colorCrayon.blue / 255.0))"
        view.backgroundColor = UIColor.init(red: CGFloat(colorCrayon.red / 255.0 ), green: CGFloat(colorCrayon.green / 255.0 ), blue: CGFloat(colorCrayon.blue / 255.0), alpha: 1)
        redSlider.value = Float(colorCrayon.red/255.0)
        greenSlider.value = Float(colorCrayon.green / 255.0)
        blueSlider.value = Float(colorCrayon.blue / 255.0)
        alphaStepper.value = 1.0
    }
    
    
    @IBAction func colorChangeSlider(_ sender: UISlider) {
        // redSlider.value = sender.value
        redSliderLabel.text = "Red: \(String(format: "%.2f", redSlider.value))"
        greenSliderLabel.text = "Green: \(String(format: "%.2f", greenSlider.value))"
        blueSliderLabel.text = "Blue: \(String(format: "%.2f", blueSlider.value))"
        let red = redSlider.value
        let green = greenSlider.value
        let blue = blueSlider.value
        view.backgroundColor = UIColor(red: CGFloat(red), green:  CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alphaStepper.value))
        //        redSliderValue = CGFloat(sender.value)
        
    }
    
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
        alphaStepper.value = sender.value
        alphaStepperLabel.text = "Alpha: \(String(format: "%.2f", alphaStepper.value))"
        let red = redSlider.value
        let green = greenSlider.value
        let blue = blueSlider.value
        view.backgroundColor = UIColor(red: CGFloat(red), green:  CGFloat(green), blue: CGFloat(blue), alpha: CGFloat(alphaStepper.value))
    }
    
    
    @IBAction func resetColorButton(_ sender: UIButton) {
        updateUI()
    }
}




//func configureRedSlider() {
//    redSlider.minimumValue = 0.0
//    redSlider.maximumValue = 1.0
//    redSlider?.value = Float((crayon?.red ?? 0.0) / 255.0)
//}
//
//func configureAlpha() {
//    alphaStepper.minimumValue = 0.0
//    alphaStepper.maximumValue = 1.0
//    alphaStepper.stepValue = 0.1
//}
