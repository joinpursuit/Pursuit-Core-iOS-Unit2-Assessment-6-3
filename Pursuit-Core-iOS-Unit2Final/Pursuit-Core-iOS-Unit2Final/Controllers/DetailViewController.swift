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
    
    var currentsliderValue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        crayonNameLabel.text = crayonReference.name
//        crayonRedLabel.text = "Red"
//        crayonGreenLabel.text = "Green"
//        crayonBlueLabel.text = "Blue"
//        crayonAlphaLabel.text = "Alpha"
    }
    
    @IBAction func sliderChanges(_ sender: UISlider) {
        currentsliderValue = sender.value
        if crayonReference != nil {
            //if i have a crayon color then i want my label to take the slider value and print it
            //so i got the value to the label for one, how can i set each differently?
            crayonRedLabel.text = currentsliderValue.description
            crayonGreenLabel.text = currentsliderValue.description
            crayonBlueLabel.text = currentsliderValue.description
        }
    }
    
    
    
    @IBAction func crayonAlphaStepper(_ sender: UIStepper) {
    }
    
    @IBAction func resetButtonPress(_ sender: UIButton) {
    }
}
