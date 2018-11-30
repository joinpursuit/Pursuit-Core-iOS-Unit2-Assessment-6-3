//
//  crayonSegViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Kevin Waring on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class crayonSegViewController: UIViewController {
    
    var crayonN: Crayon!

    @IBOutlet weak var crayonName: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var alphaSlider: UIStepper!
    @IBOutlet weak var resetButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        view.backgroundColor = UIColor(displayP3Red: (CGFloat(crayonN.red/250)), green: CGFloat(crayonN.green/250), blue: CGFloat(crayonN.blue/250), alpha: 1)
        //redSlider.value = Float(crayonN.red/255)
        
    }
    @IBAction func sliderAction(sender: AnyObject) {
        
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1 )
        
        
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
    }
    
    @IBAction func alphaStep(_ sender: UIStepper) {
        
        alphaLabel.text = String(alphaSlider.value)
        view.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(sender.value))
        
    }
    private func setUp() {
        if crayonN != nil {
            crayonName.text = crayonN?.name
            navigationItem.title = crayonN?.name
            title = crayonN?.name
            view.backgroundColor = UIColor(displayP3Red: (CGFloat(crayonN.red/250)), green: CGFloat(crayonN.green/250), blue: CGFloat(crayonN.blue/250), alpha: 1)
            redSlider.value = Float(crayonN.red)
            greenSlider.value = Float(crayonN.green)
            blueSlider.value = Float(crayonN.blue)
            //alphaSlider.value = Float(crayonN)
        }
    }
    @IBAction func reset (_ sender: UIButton) {
        redSlider.value = Float(crayonN.red)
        redLabel.text = "Red"
        greenSlider.value = Float(crayonN.green)
        greenLabel.text = "Green"
        blueSlider.value = Float(crayonN.blue)
        blueLabel.text = "Blue"
        alphaLabel.text = String(alphaSlider.value)
        view.backgroundColor = UIColor(displayP3Red: (CGFloat(crayonN.red/250)), green: CGFloat(crayonN.green/250), blue: CGFloat(crayonN.blue/250), alpha: 1)
    }
    
}
