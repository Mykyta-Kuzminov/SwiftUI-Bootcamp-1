//
//  SafeAreaBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 27.10.2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Section 1")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ForEach(1..<21) { _ in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.thinMaterial)
                        .frame(height: 200)
                        .shadow(color: .white, radius: 5)
                        .padding()
                }
            }
        }
        // Ігнорує безпечну зону
        .background(Color.pink.ignoresSafeArea())
    }
}

#Preview {
    SafeAreaBootcamp()
}
