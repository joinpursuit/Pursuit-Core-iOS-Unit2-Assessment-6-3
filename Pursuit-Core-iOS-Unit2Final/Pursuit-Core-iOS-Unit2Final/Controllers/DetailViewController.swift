//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Aaron Cabreja on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var crayon: Crayon!
    @IBOutlet weak var colorName: UILabel!
    
    @IBAction func resetButton(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var alphaLabel: UILabel!
    
    
    @IBAction func alphaStepper(_ sender: UIStepper) {
    }
    
    
    @IBOutlet weak var redLabel: UILabel!
    
  
    
    @IBAction func redSlider(_ sender: UISlider) {
    }
    
    
    @IBOutlet weak var greenLabel: UILabel!
    
    
    @IBAction func greenSlider(_ sender: UISlider) {
    }
    
    
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBAction func blueSlider(_ sender: UISlider) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCrayonsUI()
    }
    private func updateCrayonsUI(){
        colorName.text = crayon.name
        view.backgroundColor = UIColor(displayP3Red: CGFloat(crayon!.red), green: CGFloat(crayon!.green), blue: CGFloat(crayon!.blue), alpha: 255)
    }
}
