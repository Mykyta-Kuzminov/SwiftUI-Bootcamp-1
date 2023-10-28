//
//  BindingBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 28.10.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        VStack(spacing: 100) {
            MovingShape(isToggle: $isToggle)
            
            Button {
                withAnimation(.default) {
                    isToggle.toggle()
                }
            } label: {
                Text("Move".uppercased())
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 60)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 20))
            }
        }
    }
}

struct MovingShape: View {
    
    // Використовуємо для зв'язування якихось данних на різних зображеннях
    @Binding var isToggle: Bool
    
    var body: some View {
        Circle()
            .fill(isToggle ? Color.red : Color.green)
            .frame(width: 100)
            .shadow(color: isToggle ? Color.red : Color.green, radius: 10)
            .offset(y: isToggle ? 0 : -200)
        
    }
}

#Preview {
    BindingBootcamp()
}
