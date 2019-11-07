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
        let view = GDGradient();
        view.backgroundColor = .black
        view.layer.cornerRadius = 24
        return view
    }()
    
    let titleLabel: GDLabel = {
        let label = GDLabel(title: "Get It Done", size: 32)
        label.textAlignment = .center
        return label
    }()
    
    let contentLabel: GDLabel =  {
        let label = GDLabel(title: "Welcome, Get It Done.\n A simple todo list", size: 18)
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        return label
    }()
    
    let copyrightLabel: GDLabel = {
        let label = GDLabel(title: "Copyright © 2019 GID", color: .gray, size: 12)
        label.textAlignment = .center
        return label
    }();
    
    let nextButton: UIButton = GDButton(title: "START WINNING")
    
    @objc func handleNext() {
        UIView.animate(withDuration: 0.1, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.nextButton.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
        }) {
            _ in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.9, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                        self.nextButton.transform = CGAffineTransform(scaleX: 1, y: 1)
                }) {
                    // navigate to new screen when animation done
                    _ in
                    let listController = ListController()
                    self.present(listController, animated: true, completion: nil)
                }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nextButton.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        
        view.backgroundColor = .white
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.topAnchor, constant: 36).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        view.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor, constant: 60).isActive = true
        
        view.addSubview(contentLabel)
        contentLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        contentLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        contentLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        
        view.addSubview(nextButton)
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -36).isActive = true
        
        view.addSubview(copyrightLabel)
        copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyrightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
        
    }

}

