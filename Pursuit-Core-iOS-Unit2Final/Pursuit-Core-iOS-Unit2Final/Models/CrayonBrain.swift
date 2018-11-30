//
//  CrayonBrain.swift
//  Pursuit-Core-iOS-Unit2Final
//
//  Created by Jian Ting Li on 11/30/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

struct CrayonBrain {
    static func rGBtoUIColor (red: Double, green: Double, blue: Double, alpha: Double) -> UIColor {
        return UIColor(displayP3Red: CGFloat(red / 255), green: CGFloat(green / 255), blue: CGFloat(blue / 255), alpha: CGFloat(alpha))
    }
}
