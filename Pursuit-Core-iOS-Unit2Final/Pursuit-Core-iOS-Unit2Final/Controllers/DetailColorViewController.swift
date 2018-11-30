//
//  DetailColorViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jian Ting Li on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailColorViewController: UIViewController {
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redValueLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenValueLabel: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaValueLabel: UILabel!
    
    var slidersArr: [UISlider]!
    var colorValueLabelsArr: [UILabel]!
    
    var crayon: Crayon!
    var defaultColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = defaultColor
        
        //set color name label
        
        //setup sliders
        //notice that their corresponding indexes are match
        slidersArr = [redSlider, greenSlider, blueSlider]
        colorValueLabelsArr = [redValueLabel, greenValueLabel, blueValueLabel]
        
        //iterate one of the arr set:
            //1) min & & max value of sliders
            //2) slider starting value
            //3) color label text
        
        //setup stepper
            //set min & max (0 - 10)
            //set starting value
            //set label
                //change the value of the slider from 1 to .1 by divide by 10
    
    }
    
    //action for sliders
    @IBAction func slidersChange(_ currentSlider: UISlider) {
        //use tag to specify identify the slider to modify the label associate with the current slider
    }
    
    
    //action for stepper
    @IBAction func stepperChange(_ stepper: UIStepper) {
        
    }
    
    
    //action for reset
    @IBAction func resetColorSettings(_ sender: Any) {
    
    }
    
}
