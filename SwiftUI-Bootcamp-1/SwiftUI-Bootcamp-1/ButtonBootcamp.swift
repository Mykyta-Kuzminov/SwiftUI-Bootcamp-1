//
//  ButtonBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 27.10.2023.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            Circle()
                .fill(isToggle ? Color.purple : Color.green)
                .shadow(color: isToggle ? Color.purple : Color.green, radius: 10)
                .frame(width: 100)
            
        // Створює кнопку
            Button {
                withAnimation(.default) {
                    isToggle.toggle()
                }
            } label: {
                Text("Toggle")
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(width: 150, height: 60)
                    .foregroundStyle(Color.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
            }
        }
    }
}

#Preview {
    ButtonBootcamp()
}
