//
//  ToolbarBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                Text("Hey 🤩")
                    .foregroundStyle(.white)
            }
            .navigationTitle("Toolbar")
            // Використовується для створення різних кнопок та надписів у різних місцях екрану
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.white)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gearshape.fill")
                        .foregroundStyle(.white)
                }
                
//                ToolbarItem(placement: .principal) {
//                    Text("Principal")
//                        .font(.title)
//                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Text("1")
                Text("2")
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
