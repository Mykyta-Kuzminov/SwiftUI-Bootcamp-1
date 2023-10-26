//
//  InitializerBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 26.10.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    var body: some View {
        // Ініціалізація зображень по шаблону
        FruitView(fruit: .apple, count: 10)
        FruitView(fruit: .orange, count: 20)
        FruitView(fruit: .banana, count: 30)
        FruitView(fruit: .kiwi, count: 40)
    }
}

// Шаблон за яким ми можемо створювати різні зображення
struct FruitView: View {
    
    let fruit: Fruit
    let count: Int
    
    var body: some View {
        VStack {
            Text(fruit.rawValue)
                .font(.headline)
            
            Text("\(count)")
                .font(.largeTitle)
        }
        .frame(width: 150, height: 150)
        .background(fruit.color)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

// Створює перечислення за допомогою якого можна зручно отримувати дані
enum Fruit: String {
    case apple = "Apple"
    case orange = "Orange"
    case banana = "Banana"
    case kiwi = "Kiwi"
    
    var color: Color {
        switch self {
        case .apple:
            .red
        case .orange:
            .orange
        case .banana:
            .yellow
        case .kiwi:
            .green
        }
    }
}

#Preview {
    InitializerBootcamp()
}
