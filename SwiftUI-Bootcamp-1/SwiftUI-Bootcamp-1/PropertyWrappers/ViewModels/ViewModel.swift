//
//  ViewModel.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 02.11.2023.
//

import Foundation

// ViewModel
class ViewModel: ObservableObject {
    @Published var items: [Model] = []
    @Published var selection: Int = 0
    
    init() {
        items.append(contentsOf: [
            Model(title: "Milk", price: 3, code: 120),
            Model(title: "Chocolate", price: 2, code: 97),
            Model(title: "Bread", price: 3, code: 10)
        ])
    }
    
    func addItem(item: Model) {
        items.append(item)
    }
}
