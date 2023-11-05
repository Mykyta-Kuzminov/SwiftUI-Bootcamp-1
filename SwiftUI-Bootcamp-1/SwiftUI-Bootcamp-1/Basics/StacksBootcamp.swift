//
//  StacksBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 25.10.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack -> вертикальний стак
    // HStack -> горизонтальний стак
    // ZStack -> наложення зверху
    var body: some View {
        // Вирівнює об'єкти
        VStack(alignment: .leading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 70, height: 70)
            
            // Накладає один на одного
            ZStack {
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 60, height: 60)
                
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 40, height: 40)
                
                Rectangle()
                    .fill(Color.cyan)
                    .frame(width: 20, height: 20)
                
            }
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 50, height: 50)
            
            // Змінює відступ між об'єктами
            HStack(spacing: 40) {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 50, height: 50)
                
                Rectangle()
                    .fill(Color.pink)
                    .frame(width: 50, height: 50)
            }
        }
    }
}

#Preview {
    StacksBootcamp()
}
