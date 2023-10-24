//
//  GradientBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 24.10.2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            RoundedRectangle(cornerRadius: 25.0)
            // Лінійний градієнт
                .fill(LinearGradient(
                    colors: [.red, .orange],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing))
                .frame(width: 300, height: 100)
            
            RoundedRectangle(cornerRadius: 25.0)
            // Радіальний градієнт
                .fill(RadialGradient(
                    colors: [.blue, .purple],
                    center: .center,
                    startRadius: 5,
                    endRadius: 300))
                .frame(width: 300, height: 100)
            
            RoundedRectangle(cornerRadius: 25.0)
            // Кутовий градієнт
                .fill(AngularGradient(
                    colors: [.green, .pink],
                    center: .topLeading,
                    angle: .degrees(300)))
                .frame(width: 300, height: 100)
        }
    }
}

#Preview {
    GradientBootcamp()
}
