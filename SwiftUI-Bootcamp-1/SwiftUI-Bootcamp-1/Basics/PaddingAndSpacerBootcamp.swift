//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 25.10.2023.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
            // Padding більш динамічний за frame
                .background(Color.yellow)
                .padding()
            // Відступ з однієї сторони
                .padding(.leading, 20)
                .background(Color.blue)
            
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.red)
                .padding(.leading, 20)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("This is the discription what we will do on this screen. It's multiply lines and we will align the text to the leading edge.")
            }
            .padding()
            // Вертикальний відступ
            .padding(.vertical)
            .background(
                Color.white
                    .clipShape(.rect(cornerRadius: 20))
                    .shadow(color: .black.opacity(0.3), radius: 10)
            )
            // Горизонтальний відступ
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    PaddingAndSpacerBootcamp()
}
