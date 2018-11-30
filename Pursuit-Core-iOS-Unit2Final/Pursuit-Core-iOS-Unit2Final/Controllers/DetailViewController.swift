//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Ari Rivera on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var crayonReference: Crayon!
    var crayonArray: [Crayon]!
    
    @IBOutlet weak var crayonNameLabel: UILabel!
    
    @IBOutlet weak var crayonRedLabel: UILabel!
    
    @IBOutlet weak var crayonGreenLabel: UILabel!
    
    @IBOutlet weak var crayonBlueLabel: UILabel!
    
    @IBOutlet weak var crayonAlphaLabel: UILabel!
    
    @IBOutlet weak var crayonRedSlider: UISlider!
    
    @IBOutlet weak var crayonGreenSlider: UISlider!
    
    @IBOutlet weak var crayonBlueSlider: UISlider!
    
    var currentSliderValue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        crayonNameLabel.text = crayonReference.name
        
    }
    
    @IBAction func sliderChanges(_ sender: UISlider) {
    
        
//        currentSliderValue = sender.value
//
//        switch  {
//        case crayonRedLabel:
//            crayonRedLabel.text = "Red: \(crayonRedSlider.value.description)"
//        case crayonGreenLabel:
//            crayonGreenLabel.text = "Green: \(crayonGreenSlider.value.description)"
//        case crayonBlueLabel:
//             crayonBlueLabel.text = "Blue: \(crayonBlueSlider.value.description)"
//        default:
//            print("who even knows anymore")
//        }
   }

    
    @IBAction func crayonAlphaStepper(_ sender: UIStepper) {
    }
    
    @IBAction func resetButtonPress(_ sender: UIButton) {
    }
}

