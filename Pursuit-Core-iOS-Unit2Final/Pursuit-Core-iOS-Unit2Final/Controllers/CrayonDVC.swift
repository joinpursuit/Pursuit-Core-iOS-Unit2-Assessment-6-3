//
//  CrayonDVC.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Alyson Abril on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDVC: UIViewController {
    public var crayon: Crayon!
    
    @IBOutlet weak var colorName: UILabel!
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!

    
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorName.text = crayon.name
        redLabel.text = "Red - \(crayon.red)"
        greenLabel.text = "Green - \(crayon.green)"
        blueLabel.text = "Blue - \(crayon.blue)"
        view.backgroundColor = UIColor.init(red: CGFloat(crayon.red)/255, green: CGFloat(crayon.green)/255, blue: CGFloat(crayon.blue)/255, alpha: 1)
    }
let color = 

    @IBAction func redSlider(_ sender: UISlider) {
        redLabel.text = "Red - \(sender.value)"
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        greenLabel.text = "Green - \(sender.value)"
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        blueLabel.text = "Blue - \(sender.value)"
    }
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
        alphaLabel.text = "Alpha - \(sender.value)"
    }
    
}

