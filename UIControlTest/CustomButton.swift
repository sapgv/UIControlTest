//
//  CustomButton.swift
//  UIControlTest
//
//  Created by Grigory Sapogov on 04.03.2024.
//

import UIKit

final class CustomButton: UIControl {
    
    var completion: (() -> Void)?
    
    private let text: String
    
    private let titleLabel = UILabel()
    
    init(text: String) {
        self.text = text
        super.init(frame: .zero)
        self.setupLabel()
        self.layoutView()
        self.addTarget(self, action: #selector(tapAction), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layoutView() {
        
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        
        self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 16).isActive = true
        self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        self.titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16).isActive = true
        
    }
    
    private func setupLabel() {
        self.titleLabel.text = text
        self.titleLabel.textAlignment = .center
        self.titleLabel.backgroundColor = .yellow
    }
    
    @objc
    private func tapAction() {
        completion?()
    }
    
}
