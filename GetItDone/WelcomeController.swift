//
//  ViewController.swift
//  GetItDone
//
//  Created by Nguyen Hoa on 11/5/19.
//  Copyright © 2019 Nguyen Hoa. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    let bg: UIView = {
        let view = UIView();
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .cyan
        view.layer.cornerRadius = 8
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        view.addSubview(bg)
        
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.topAnchor, constant: 36).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }


}

