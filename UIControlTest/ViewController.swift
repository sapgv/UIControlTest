//
//  ViewController.swift
//  UIControlTest
//
//  Created by Grigory Sapogov on 04.03.2024.
//

import UIKit

class ViewController: UIViewController {

    private let customButton = CustomButton(text: "test")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupButton()
        self.layout()
    }
    
    private func setupButton() {
        self.customButton.backgroundColor = .red
        self.customButton.completion = { [weak self] in
            print("tap")
        }
    }
    
    private func layout() {
        
        self.customButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(customButton)
        
        self.customButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16).isActive = true
        self.customButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16).isActive = true
        self.customButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.customButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.customButton.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }


}

