//
//  ColorBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 24.10.2023.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            RoundedRectangle(cornerRadius: 25.0)
            // SwiftUI колір
                .fill(Color.red)
                .frame(width: 300, height: 100)
            
            RoundedRectangle(cornerRadius: 25.0)
            // UIKit колір
                .fill(Color(UIColor.red))
                .frame(width: 300, height: 100)
            
            RoundedRectangle(cornerRadius: 25.0)
            // UIKit колір
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100)
            // Додає тінь
                .shadow(color: .black.opacity(0.3), radius: 10)
            
            RoundedRectangle(cornerRadius: 25.0)
            // Assets колір
                .fill(.custom)
                .frame(width: 300, height: 100)
        }
    }
}

#Preview {
    ColorBootcamp()
}
