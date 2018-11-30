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
    
    @IBOutlet weak var crayonNameLabel: UILabel!
    
    @IBOutlet weak var crayonRedLabel: UILabel!
    
    @IBOutlet weak var crayonGreenLabel: UILabel!
    
    @IBOutlet weak var crayonBlueLabel: UILabel!
    
    @IBOutlet weak var crayonAlphaLabel: UILabel!
    
    @IBOutlet weak var crayonRedSlider: UISlider!
    
    @IBOutlet weak var crayonGreenSlider: UISlider!
    
    @IBOutlet weak var crayonBlueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        crayonNameLabel.text = crayonReference.name
        crayonRedLabel.text = "Red"
        crayonGreenLabel.text = "Green"
        crayonBlueLabel.text = "Blue"
        crayonAlphaLabel.text = "Alpha"
    }
    

    @IBAction func crayonRedSliderChanged(_ sender: UISlider) {
    }
   
    
    @IBAction func crayonGreenSliderChanged(_ sender: UISlider) {
    }
    
    @IBAction func crayonBlueSliderChanged(_ sender: UISlider) {
    }
    
    
    @IBAction func crayonAlphaStepper(_ sender: UIStepper) {
    }
    
    @IBAction func resetButtonPress(_ sender: UIButton) {
    }
}
