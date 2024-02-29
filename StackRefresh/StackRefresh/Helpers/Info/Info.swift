//
//  Info.swift
//  StackRefresh
//
//  Created by Павел Ершов on 01.03.2024.
//

import Foundation

class Info {
    
    struct Item {
        var title: String
    }
    
    private let data = Array(1...100)
    
    private var items:[Item] = []
    
    private var countItems: Int
    
    init(countItems: Int) {
        self.countItems = countItems
    }
    
    private func setupGame() {
        var digits = data.shuffled()
        
        while items.count < countItems{
            let item = Item(title: String(digits.removeFirst()))
            items.append(item)
        }
    }
}
