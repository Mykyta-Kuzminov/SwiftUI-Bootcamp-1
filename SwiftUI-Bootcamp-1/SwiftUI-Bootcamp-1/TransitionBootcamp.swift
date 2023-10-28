//
//  TransitionBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 28.10.2023.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        VStack {
            if isToggle {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(maxWidth: .infinity, maxHeight: 400)
                // Використовуємо для анімованого появлення зображення
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .top)))
            }
            
            Spacer()
            
            Button {
                withAnimation(.easeInOut) {
                    isToggle.toggle()
                }
            } label: {
                Text("Show")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(20)
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 20))
            }
        }
    }
}

#Preview {
    TransitionBootcamp()
}
