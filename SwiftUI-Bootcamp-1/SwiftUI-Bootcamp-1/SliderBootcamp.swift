//
//  SliderBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 31.10.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var selection: CGFloat = 50
    @State var color: Color = .white
    
    var body: some View {
        VStack {
            Spacer()
            Text("Font Size")
                .font(.system(size: selection))
                .foregroundStyle(color)
            
            Spacer()
            
            Slider(value: $selection, in: 1...100) {
                Text("Font Size")
            } minimumValueLabel: {
                Text("1")
            } maximumValueLabel: {
                Text("100")
            } onEditingChanged: { isChanged in
                withAnimation(.default) {
                    color = isChanged ? Color.green : Color.white
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
