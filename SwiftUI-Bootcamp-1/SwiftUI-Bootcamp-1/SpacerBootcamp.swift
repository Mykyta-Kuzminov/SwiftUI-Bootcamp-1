//
//  SpacerBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 26.10.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            // Максимально віддаляє об'єкт по вертикалі угору
            Spacer()
                .frame(width: 20)
                .background(Color.orange)
            
            HStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100)
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                // Максимально віддаляє об'єкти по горизонталі ліворуч
                Spacer()
                    .frame(height: 20)
                    .background(Color.orange)
            }
            
        }
        .frame(width: 300, height: 300)
    }
}

#Preview {
    SpacerBootcamp()
}
