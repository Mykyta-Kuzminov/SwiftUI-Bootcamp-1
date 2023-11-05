//
//  SliderBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 31.10.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var selection: CGFloat = 50
    @State var color: Color = .primary
    
    var body: some View {
        VStack {
            Spacer()
            Text("Font Size")
                .font(.system(size: selection))
                .foregroundStyle(color)
            
            Spacer()
            
            // Створює слайдер
            Slider(value: $selection, in: 1...100) {
                Text("Font Size")
            } minimumValueLabel: {
                // Мінімальне значення
                Text("1")
            } maximumValueLabel: {
                // Максимальне значення
                Text("100")
                // Спрацьовує, коли значення змінюється
            } onEditingChanged: { isChanged in
                withAnimation(.default) {
                    color = isChanged ? Color.green : Color.primary
                }
            }
            .tint(.pink)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SliderBootcamp()
}
