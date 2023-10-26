//
//  ScrollViewBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 26.10.2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        // Створює зображення, що можливо скролити вертикально. Індикатор промотування вимкнений
        ScrollView(.vertical, showsIndicators: false) {
            // Завантажує зображення, які знаходяться тільки не екрані. Коли потрібно довантажує
            LazyVStack {
                ForEach(0..<21) { _ in
                    // Створює зображення, що можливо скролити горизонтельно. Індикатор промотування вимкнений
                    ScrollView(.horizontal, showsIndicators: false) {
                        // Завантажує зображення, які знаходяться тільки не екрані. Коли потрібно довантажує
                        LazyHStack {
                            ForEach(0..<11) { _ in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 250, height: 150)
                                    .shadow(radius: 5)
                                    .padding(8)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
