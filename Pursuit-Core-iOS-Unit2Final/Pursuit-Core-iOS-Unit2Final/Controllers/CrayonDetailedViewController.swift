//
//  CrayonDetailedViewController.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jabeen's MacBook on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class CrayonDetailedViewController: UIViewController {

    @IBOutlet weak var crayonname: UILabel!
    
    @IBOutlet weak var redlabel: UILabel!
    @IBOutlet weak var redslider: UISlider!
    
    @IBOutlet weak var greenlabel: UILabel!
    @IBOutlet weak var greenslider: UISlider!
    
    @IBOutlet weak var bluelabel: UILabel!
    @IBOutlet weak var blueslider: UISlider!
    
    @IBOutlet weak var alpha: UILabel!
    @IBOutlet weak var alphastepper: UIStepper!
    
    @IBOutlet weak var resetButton: UIButton! // this is an action
    
    @IBOutlet weak var tableview: UITableView!
    
    public var mycrayons = Crayon.allTheCrayons
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
    
    }
    

    

}
