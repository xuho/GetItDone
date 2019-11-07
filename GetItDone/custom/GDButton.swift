//
//  GDButton.swift
//  GetItDone
//
//  Created by Nguyen Hoa on 11/7/19.
//  Copyright © 2019 Nguyen Hoa. All rights reserved.
//

import UIKit

class GDButton: UIButton {
    
    var title: String!
    
    init(title: String = "Default title", frame: CGRect = .zero) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }
        self.title = title
        self.phaseTwo()
    }
    
    func phaseTwo() {
        self.setTitle(title, for: .normal)
        self.setTitleColor(.gray, for: .normal)
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont.systemFont(ofSize: 16)
        }
    }
    
   required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
