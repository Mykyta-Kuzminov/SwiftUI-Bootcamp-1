//
//  TapGestureBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 01.11.2023.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isColor: Bool = false
    @State var isRotate: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 25.0)
                .fill(isColor ? .green : .red)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(isRotate ? 360 : 0))
            
            Spacer()
            
            HStack(spacing: 50) {
                Text("Color")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    // Використовується замість кнопки, має ті ж самі функції
                    .onTapGesture {
                        withAnimation(.default) {
                            isColor.toggle()
                        }
                    }
                
                Text("Rotate")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .onTapGesture(count: 2) {
                        withAnimation(.easeIn) {
                            isRotate.toggle()
                        }
                    }
                
            }
        }
    }
}

#Preview {
    TapGestureBootcamp()
}
