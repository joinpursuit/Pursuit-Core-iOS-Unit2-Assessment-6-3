//
//  DetailViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Pritesh Nadiadhara on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var alphaLevel:Double = 1
    @IBOutlet weak var reset: UIButton!
    @IBAction func resetValues(_ sender: UIButton){
        alphaLevel = 1
        alphaStepper.value = 1
        alphaValue.text = String(alphaLevel)
        self.view.backgroundColor = UIColor(red: CGFloat(originalRed/255), green: CGFloat(originalGreen/255), blue: CGFloat(originalBlue/255), alpha: CGFloat(alphaLevel))
        redSlider.value = Float(originalRed)
        redValue.text =  String(originalRed)
        greenSlider.value = Float(originalGreen)
        greenValue.text = String(originalGreen)
        blueSlider.value = Float(originalBlue)
        blueValue.text = String(originalBlue)
    }
    
    @IBOutlet weak var color: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBAction func redSliderChanged(_ sender: UISlider){
        redValue.text = Int(sender.value).description
        colorData.red = Double(redSlider.value)
    }
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBAction func greenSliderChanged(_ sender: UISlider){
        greenValue.text = Int(sender.value).description
        colorData.green = Double(greenSlider.value)
    }
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func blueSliderChanged(_ sender: UISlider){
        blueValue.text = Int(sender.value).description
        colorData.blue = Double(blueSlider.value)
        
    }
    @IBOutlet weak var alphaStepper: UIStepper!
    @IBAction func aplhaUpdate(_ sender: UIStepper){
           alphaLevel = alphaStepper.value
        alphaValue.text = String(alphaLevel)
        self.view.backgroundColor = UIColor(red: CGFloat(colorData.red/255), green: CGFloat(colorData.green/255), blue: CGFloat(colorData.blue/255), alpha: CGFloat(alphaLevel))
    }
    
    @IBOutlet weak var redValue: UILabel!
    
    @IBOutlet weak var greenValue: UILabel!
    
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var alphaValue: UILabel!
    
    @IBAction func backgroundUpdate(_ sender: UISlider!){
        self.view.backgroundColor = UIColor(red: CGFloat(colorData.red/255), green: CGFloat(colorData.green/255), blue: CGFloat(colorData.blue/255), alpha: CGFloat(alphaLevel))
    }
  
    var colorData: Crayon!
    var originalRed:Double = 0
    var originalGreen:Double = 0
    var originalBlue:Double = 0

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialStart()
        originalRed = colorData.red
        originalBlue = colorData.blue
        originalGreen = colorData.green

        
        
    }
    
    private func initialStart(){
        color.text = colorData?.name
        self.view.backgroundColor = UIColor(red: CGFloat(colorData.red/255), green: CGFloat(colorData.green/255), blue: CGFloat(colorData.blue/255), alpha: 1)
        setSliders()
        
    }
    
    private func setSliders(){
        redSlider.value = Float(colorData.red)
        redValue.text =  String(colorData.red)
        greenSlider.value = Float(colorData.green)
        greenValue.text = String(colorData.green)
        blueSlider.value = Float(colorData.blue)
        blueValue.text = String(colorData.blue)
        alphaValue.text = "1"
        }

    }
    
  
    
    
        


    


