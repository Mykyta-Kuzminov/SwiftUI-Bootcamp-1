//
//  GridItemBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 26.10.2023.
//

import SwiftUI

struct GridItemBootcamp: View {
    
    // Константа, що містить в собі склад таблиці
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6),
        GridItem(.flexible(), spacing: 6)
    ]
    
    var body: some View {
        ScrollView {
            // Створює таблицю, яка довантажує зображення
            LazyVGrid(columns: columns) {
                // Секція номер 1
                Section {
                    ForEach(0..<21) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                // Назва секції та форматування
                } header: {
                    HStack {
                        Text("Section 1")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
                // Секція номер 2
                Section {
                    ForEach(0..<21) { _ in
                        Rectangle()
                            .frame(height: 150)
                    }
                // Назва секції та форматування
                } header: {
                    HStack {
                        Text("Section 2")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}

#Preview {
    GridItemBootcamp()
}
