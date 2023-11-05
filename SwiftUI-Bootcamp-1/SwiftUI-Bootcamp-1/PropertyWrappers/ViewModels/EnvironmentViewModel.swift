//
//  EnviromentViewModel.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import Foundation

// ViewModel
class EnvironmentViewModel: ObservableObject {
    @Published var items: [Model] = []
    
    init() {
        items.append(contentsOf: [
            Model(title: "Potato", price: 6, code: 200),
            Model(title: "Coffee", price: 5, code: 100),
            Model(title: "Banana", price: 2, code: 145)
        ])
    }
}
