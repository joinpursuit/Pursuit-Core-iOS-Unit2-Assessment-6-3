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
    
    //https://trendct.org/2016/01/22/how-to-choose-a-label-color-to-contrast-with-background/
    static func rgbToLuma(_ red: Double, _ green: Double, _ blue: Double) -> Double {
        return ( (red * 299) + (green * 589) + (blue * 114) ) / 1000
    }
    
    static func isScreenTooDim(luma: Double, alpha: Double) -> Bool {
        if luma < 123 || alpha < 0.5 { return true }
        return false
    }
}
