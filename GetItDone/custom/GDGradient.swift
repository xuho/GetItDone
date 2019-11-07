//
//  GDGradient.swift
//  GetItDone
//
//  Created by Nguyen Hoa on 11/6/19.
//  Copyright © 2019 Nguyen Hoa. All rights reserved.
//

import UIKit

class GDGradient: UIView {
    
    var hexColors: [CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false;
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0, 1.2]
        }
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
