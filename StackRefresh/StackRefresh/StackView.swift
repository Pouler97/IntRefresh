//
//  StackView.swift
//  StackRefresh
//
//  Created by Павел Ершов on 29.02.2024.
//

import UIKit

class StackView: UIView {
    
    let leftStackView = UIStackView()
    let middleStackView = UIStackView()
    let rightStackView = UIStackView()
    
    var arrayOfSquares = [UIView]()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        
        translatesAutoresizingMaskIntoConstraints = false
        leftStackView.translatesAutoresizingMaskIntoConstraints = false
        middleStackView.translatesAutoresizingMaskIntoConstraints = false
        rightStackView.translatesAutoresizingMaskIntoConstraints = false
        
        setupLeftStackView()
        setupMiddleStackView()
        setupRightStackView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLeftStackView() {
        
        for i in 0...35 {
            let view = UIView()
            view.tag = i
            view.backgroundColor = .red
            arrayOfSquares.append(view)
            leftStackView.addArrangedSubview(view)
        }
    }
    
    func setupMiddleStackView() {
        
        for i in 36...70 {
            let view = UIView()
            view.tag = i
            view.backgroundColor = .red
            arrayOfSquares.append(view)
            leftStackView.addArrangedSubview(view)
        }
    }
        
        func setupRightStackView() {
            
            for i in 71...100 {
                let view = UIView()
                view.tag = i
                view.backgroundColor = .red
                arrayOfSquares.append(view)
                leftStackView.addArrangedSubview(view)
            }
        }
    
    private func setupConstraints() {
     
        leftStackView.axis = .vertical
        middleStackView.axis = .vertical
        rightStackView.axis = .vertical

        leftStackView.distribution = .fillEqually
        middleStackView.distribution = .fillEqually
        rightStackView.distribution = .fillEqually
        
        leftStackView.spacing = 5
        middleStackView.spacing = 5
        rightStackView.spacing = 5
        
        addSubview(leftStackView)
        addSubview(middleStackView)
        addSubview(rightStackView)
        
        NSLayoutConstraint.activate([
            leftStackView.topAnchor.constraint(equalTo: topAnchor),
            leftStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            leftStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            leftStackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3.1),
            
            middleStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            middleStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            middleStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            middleStackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3.1),
            
            rightStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            rightStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            rightStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            rightStackView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3.1)
        ])
    }
}
