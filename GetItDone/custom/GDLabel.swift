//
//  GDLabel.swift
//  GetItDone
//
//  Created by Nguyen Hoa on 11/7/19.
//  Copyright © 2019 Nguyen Hoa. All rights reserved.
//

import UIKit

class GDLabel: UILabel {
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
    }
   
    init(title: String = "Default text", color: UIColor = .white, size: CGFloat = 16, frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.text = title
        self.textColor = color
        self.font = UIFont.systemFont(ofSize: size)
    }
}
