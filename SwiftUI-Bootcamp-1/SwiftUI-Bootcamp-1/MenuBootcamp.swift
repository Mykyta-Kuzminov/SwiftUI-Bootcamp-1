//
//  MenuBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct MenuBootcamp: View {
    
    enum Category: String, CaseIterable {
        case all = "All"
        case recent = "Recent"
        case mostViewed = "Most Viewed"
    }
    
    @State private var category: Category = .all
    
    var body: some View {
        Menu {
            ForEach(Category.allCases, id: \.rawValue) { item in
                Button(item.rawValue) {
                    category = item
                }
            }
        } label: {
            Text("Category: \(category.rawValue)" )
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .frame(height: 55)
                .background(.thinMaterial)
                .clipShape(.rect(cornerRadius: 20))
        }

    }
}

#Preview {
    MenuBootcamp()
}
