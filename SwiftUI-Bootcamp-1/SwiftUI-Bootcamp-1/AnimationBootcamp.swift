//
//  AnimationBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 28.10.2023.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isToggle: Bool = false
    
    var body: some View {
        VStack(spacing: 200) {
            RoundedRectangle(cornerRadius: 20)
                .fill(isToggle ? Color(UIColor.green) : Color(UIColor.magenta))
                .frame(width: isToggle ? 150 : 200,
                       height: isToggle ? 100 : 200)
                // Прокручує фігуру за градусами
                .rotationEffect(.degrees(isToggle ? 0 : 360))
            
            Button {
                // Використовуємо анімацію з затримкою 3 секунди
                withAnimation(.easeInOut(duration: 3)) {
                    isToggle.toggle()
                }
            } label: {
                Text("Animate")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .padding(20)
                    .background(.white)
                    .clipShape(.rect(cornerRadius: 20))
                    .shadow(color: .white, radius: 10)
            }
        }
    }
}

#Preview {
    AnimationBootcamp()
}
