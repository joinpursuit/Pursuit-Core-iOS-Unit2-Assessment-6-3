//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Amy Alsaydi on 11/22/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    var crayon: Crayon?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    
    func updateUI() {
        
        guard let selectedCrayon = crayon else { return }
        colorNameLabel.text = selectedCrayon.name
        
        
        // update color name
        // slider values + their labels
        // backgroundcolor
        // steper value + label
    }
    

}
