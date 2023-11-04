//
//  SafeAreaInsetBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { _ in
                    Rectangle()
                        .frame(height: 300)
                }
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top) {
                Text("Hello, World!")
                    .frame(maxWidth: .infinity)
                    .background(.cyan)
            }
            .safeAreaInset(edge: .bottom, alignment: .leading) {
                Text("Hi")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.yellow)
            }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
