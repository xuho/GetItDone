//
//  extension.swift
//  GetItDone
//
//  Created by Nguyen Hoa on 11/7/19.
//  Copyright © 2019 Nguyen Hoa. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var blueZero: UIColor = UIColor(rgb: 0x3A7BD5)
    static var blueOne: UIColor = UIColor(rgb: 0x64E4FF)
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) /  255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
