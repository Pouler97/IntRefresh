//
//  Button.swift
//  StackRefresh
//
//  Created by Павел Ершов on 29.02.2024.
//

import UIKit

class Button: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
     
        setTitleColor(.white, for: .normal)
        backgroundColor = .red
        titleLabel?.font = .boldSystemFont(ofSize: 28)
        layer.cornerRadius = 10
    }
    
}
