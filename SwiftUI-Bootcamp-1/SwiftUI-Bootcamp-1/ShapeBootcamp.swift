//
//  ShapeBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 24.10.2023.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            // Створює коло
            Circle()
            // Змінює колір фігури
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            // Створює еліпс
            Ellipse()
            // Вирізає, залишаючи лише контур
                .stroke(.red)
                .frame(width: 150, height: 100)
            
            // Створює капсулу
            Capsule()
            // Обрізає фігуру
                .trim(from: 0.3, to: 1.0)
                .frame(width: 150, height: 100)
            
            // Створює прямокутник з тупими кутами
            Rectangle()
            // Вирізає, залишаючи лише контур з розміром, який ви обрали
                .stroke(lineWidth: 5)
                .frame(width: 100, height: 100)
            
            // Створює прямокутник з круглими кутами
            RoundedRectangle(cornerRadius: 40)
            // Вирізає, залишаючи лише контур та змінює його стиль
                .stroke(.green, style:
                            StrokeStyle(lineWidth: 20,
                                        lineCap: .butt,
                                        dash: [10]))
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    ShapeBootcamp()
}
