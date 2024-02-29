//
//  ViewController.swift
//  StackRefresh
//
//  Created by Павел Ершов on 29.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let stackView = StackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        view.addSubview(stackView)
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 700)
        
        ])
    }
}



