//
//  NavigationStackBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    @State var stackPath: [String] = []
    let fruits = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    NavigationLink(value: fruit) {
                        Text(fruit)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .tint(.black)
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: String.self) { value in
                Text(value)
            }
            
            Button("Super segue!") {
                stackPath.append(contentsOf: [
                    "Coconut", "Watermelon", "Mango"
                ])
            }
        }
    }
}

#Preview {
    NavigationStackBootcamp()
}
