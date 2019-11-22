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
    
    var redSliderValue: CGFloat? {
        didSet {
            updateUI()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        configureRedSlider()
        updateUI()
       
    }
    
    func updateUI() {
        guard let colorCrayon = crayon else {
            fatalError("couldn't set crayon object, check prepare for segue")
        }
        navigationItem.title = colorCrayon.name
        crayonColorLabel?.text = colorCrayon.name
        redSliderLabel?.text = "Red: \(colorCrayon.red/255.0)"
        greenSliderLabel?.text = "Green: \(colorCrayon.green)"
        blueSliderLabel?.text = "Blue: \(colorCrayon.blue)"
        view.backgroundColor = UIColor.init(red: CGFloat(colorCrayon.red / 255.0 ), green: CGFloat(colorCrayon.green / 255.0 ), blue: CGFloat(colorCrayon.blue / 255.0), alpha: 1)
        redSlider.value = Float(colorCrayon.red/255.0)
        greenSlider.value = Float(colorCrayon.green / 255.0)
    }
    func configureRedSlider() {
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        redSlider?.value = Float((crayon?.red ?? 0.0) / 255.0)
    }
    
    @IBAction func redChangeSlider(_ sender: UISlider) {
        redSlider.value = sender.value
//        redSliderValue = CGFloat(sender.value)
    }
    

}
