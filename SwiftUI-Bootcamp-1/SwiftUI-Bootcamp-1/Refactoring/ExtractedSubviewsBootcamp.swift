//
//  ExtractedSubviewsBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 27.10.2023.
//

import SwiftUI

struct ExtractedSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            VStack {
                content
            }
        }
    }
    
    var content: some View {
        VStack {
            ShapeView(color: .red, width: 250)
            ShapeView(color: .orange, width: 220)
            ShapeView(color: .yellow, width: 190)
            ShapeView(color: .green, width: 160)
            ShapeView(color: .blue, width: 130)
        }
    }
}

struct ShapeView: View {
    
    let color: Color
    let width: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(color)
            .frame(width: width, height: 60)
    }
}

#Preview {
    ExtractedSubviewsBootcamp()
}
