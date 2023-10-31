//
//  StepperBootcmap.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 31.10.2023.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var widthValue: CGFloat = 0
    @State var heightValue: CGFloat = 0
    
    var body: some View {
        VStack {
            Spacer()
            RoundedRectangle(cornerRadius: 30.0)
                .frame(width: 100 + widthValue,
                       height: 100 + heightValue)
            Spacer()
            
            Stepper("Width") {
                withAnimation(.default) {
                    widthValue += 20
                }
            } onDecrement: {
                withAnimation(.default) {
                    widthValue -= 20
                }
            }
            
            Stepper("Height") {
                withAnimation(.default) {
                    heightValue += 20
                }
            } onDecrement: {
                withAnimation(.default) {
                    heightValue -= 20
                }
            }

        }
        .padding()
    }
}

#Preview {
    StepperBootcamp()
}
