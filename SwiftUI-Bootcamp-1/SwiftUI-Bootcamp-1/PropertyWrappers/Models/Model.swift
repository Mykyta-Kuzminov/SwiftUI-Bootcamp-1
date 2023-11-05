//
//  Model.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 02.11.2023.
//

import Foundation

// Модель, свій тип даних
struct Model: Identifiable {
    var id: String = UUID().uuidString
    
    let title: String
    let price: Int
    let code: Int
}
