//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Genesis Mosquera on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailViewController: UIViewController {
    
    @IBOutlet weak var crayonColor:UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueSliderLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaStepperLabel: UILabel!
    
    
    var crayonInfo: Crayon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonUI()
        redSliderLabel.text = "Current Red Value is \(crayonInfo!.red)"
        redSlider.value = Float((crayonInfo?.red)!)
        redSlider.minimumValue = 0
        redSlider.maximumValue = 10
        greenSliderLabel.text = "Current Green Value is \(crayonInfo!.green)"
        greenSlider.value = Float((crayonInfo?.green)!)
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 10
        blueSliderLabel.text = "Current Blue Value is \(crayonInfo!.blue)"
        blueSlider.value = Float((crayonInfo?.blue)!)
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 10
    }
    
    @IBAction func redSliderChange( sender: UISlider) {
        redSlider.value = sender.value
        redSliderLabel.text =
            Int(sender.value).description
    
    }
    
    private func updateCrayonUI() {
        guard let crayonInfo = crayonInfo else {
            fatalError("Cell is nil")
        }
        crayonColor.text = crayonInfo.name.uppercased()
//        view.backgroundColor = UIColor.init(red: CGFloat(crayonInfo.red), green: CGFloat(crayonInfo.green), blue: CGFloat(crayonInfo.blue), alpha: 1)
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayonInfo.red/255), green: CGFloat(crayonInfo.green/255), blue: CGFloat(crayonInfo.blue/255), alpha: 1)
    }
    
}
