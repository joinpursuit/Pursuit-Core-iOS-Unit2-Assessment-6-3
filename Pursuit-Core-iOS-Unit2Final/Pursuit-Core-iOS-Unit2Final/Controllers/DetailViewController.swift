//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Bienbenido Angeles on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var crayonName: UILabel!
    @IBOutlet weak var redColorSlider: UISlider!
    @IBOutlet weak var redColorLabel: UILabel!
    
    @IBOutlet weak var greenColorSlider: UISlider!
    @IBOutlet weak var greenColorLabel: UILabel!
    
    @IBOutlet weak var blueColorSlider: UISlider!
    @IBOutlet weak var blueColorLabel: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaColorLabel: UILabel!
    
    var crayonColor:Crayon?{
        didSet{
            updateUI()
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSlider()
        configureStepper()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redValChangedSlider(_ sender: UISlider) {
        crayonColor?.red = Double(sender.value)
    }
    
    @IBAction func greenValChangedSlider(_ sender: UISlider) {
        crayonColor?.green = Double(sender.value)
    }
    
    @IBAction func blueValChangedSlider(_ sender: UISlider) {
        crayonColor?.blue = Double(sender.value)
    }
    
    @IBAction func stepperValChagedSlider(_ sender: UIStepper) {
        alphaStepper.value = sender.value
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        
    }
    
    func updateUI(){
        guard let validCrayonColor = crayonColor else {
            fatalError("Could not set crayonColor, check prepare for segue")
        }
        
        crayonName?.text = validCrayonColor.name
        
        redColorSlider?.value = Float(validCrayonColor.red/255)
        redColorLabel?.text = "Red Value: \(String(format: "%0.f",(validCrayonColor.red/255)))"
        
        greenColorSlider?.value = Float(validCrayonColor.green/255)
        greenColorLabel?.text = "Green Value: \(String(format:"%0.f",(validCrayonColor.green/255)))"
        
        blueColorSlider?.value = Float(validCrayonColor.blue/255)
        blueColorLabel?.text = "Blue Value: \(String(format: "%0.f", (validCrayonColor.blue/255)))"
        
        alphaStepper?.value = 1.0
        alphaColorLabel?.text = "Alpha Value: \(String(format: "%0.f", (alphaStepper.value/255)))"
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redColorSlider.value), green: CGFloat(greenColorSlider.value), blue: CGFloat(blueColorSlider.value), alpha: CGFloat(alphaStepper.value))
    }
    
    func configureSlider(){
        redColorSlider.minimumValue = 0.0
        greenColorSlider.minimumValue = 0.0
        blueColorSlider.minimumValue = 0.0
        
        redColorSlider.maximumValue = 1.0
        greenColorSlider.maximumValue = 1.0
        blueColorSlider.maximumValue = 1.0
    }
    
    func configureStepper(){
        alphaStepper.minimumValue = 0.0
        alphaStepper.maximumValue = 1.0
        alphaStepper.stepValue = 0.1
    }

}
