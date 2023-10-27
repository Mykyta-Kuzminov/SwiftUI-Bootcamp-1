//
//  ExtractedFunctionBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 27.10.2023.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            
            VStack {
                Text(isToggle ? "😂" : "🤩")
                    .font(.system(size: 200))
                
                Button {
                    action()
                } label: {
                    Text("BUTTON")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundStyle(Color.white)
                        .background(Color.black)
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                    
                }
            }
        }
    }
    
    func action() {
        withAnimation(.default) {
            isToggle.toggle()
        }
    }
}

#Preview {
    ExtractedFunctionBootcamp()
}
