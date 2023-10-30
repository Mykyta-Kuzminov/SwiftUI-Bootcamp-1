//
//  ColorPickerBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 30.10.2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .black
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("ColorPicker", selection: $backgroundColor)
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.thinMaterial)
                .clipShape(.rect(cornerRadius: 20))
                .padding()
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
