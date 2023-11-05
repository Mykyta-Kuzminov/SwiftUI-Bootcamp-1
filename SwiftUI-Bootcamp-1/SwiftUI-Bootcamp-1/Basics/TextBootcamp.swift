//
//  TextBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 24.10.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
            // Змінює шрифт за розміром
                .font(.body)
            // Змінює товщину шрифта
                .fontWeight(.semibold)
            // Підкреслює текст
                .underline()
            // Робить текст під нахилом
                .italic()
            // Перекреслює текст
                .strikethrough()
            
            Text("Hello, World!")
            // Змінює шрифт за власним розміром, товщину та дизайн
                .font(.system(size: 40, weight: .semibold, design: .serif))
            
            Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot")
            // Змінює положення тексту
                .multilineTextAlignment(.center)
            // Змінює відстань між строками
                .baselineOffset(15.0)
            // Змінює відстань між літерами
                .kerning(5)
            // Змінює колір тексту
                .foregroundStyle(.blue)
            // Змінює розмір дозволеної місцевості для розташування
                .frame(width: 200, height: 240)
            // Зменшує текст, якщо він не влазить в той розмір місцевості, що був дозволений
                .minimumScaleFactor(0.8)
            
            Text("Hello, World!".uppercased())
            // Додатково вирівнює текст
                .frame(width: 200, height: 40, alignment: .leading)
            
            Text("Hello, World!".lowercased())
            // Додатково вирівнює текст
                .frame(width: 200, height: 40, alignment: .trailing)
            
        }
    }
}

#Preview {
    TextBootcamp()
}
