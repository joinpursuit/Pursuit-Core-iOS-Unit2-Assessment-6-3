//
//  CrayonDetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Elizabeth Peraza  on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailedViewController: UIViewController {

  var crayonColorInfo: Crayon!
  
  @IBOutlet weak var colorName: UILabel!
  
  @IBOutlet weak var redLabel: UILabel!
  @IBOutlet weak var redSlider: UISlider!
  
  @IBOutlet weak var blueLabel: UILabel!
  @IBOutlet weak var blueSlider: UISlider!

  
  @IBOutlet weak var greenLabel: UILabel!
  @IBOutlet weak var greenSlider: UISlider!

  
  @IBOutlet weak var alphaLabel: UILabel!
  @IBOutlet weak var alphaStepper: UIStepper!

  @IBOutlet weak var resetButton: UIButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
