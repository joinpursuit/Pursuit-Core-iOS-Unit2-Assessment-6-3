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
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    var crayonInfo: Crayon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonUI()
        redSliderLabel.text = "Current Red Value is"
        redSlider.value = Float((crayonInfo?.red)!)
        redSlider.minimumValue = 0
        redSlider.maximumValue = 20
    }
    
    private func updateCrayonUI() {
        guard let crayonInfo = crayonInfo else {
            fatalError("Cell is nil")
        }
        crayonColor.text = crayonInfo.name
//        view.backgroundColor = UIColor.init(red: CGFloat(crayonInfo.red), green: CGFloat(crayonInfo.green), blue: CGFloat(crayonInfo.blue), alpha: 1)
        
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayonInfo.red), green: CGFloat(crayonInfo.green), blue: CGFloat(crayonInfo.blue), alpha: 1)
    }
    
}
