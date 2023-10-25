//
//  FrameBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 25.10.2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, Wolrd!")
                .background(Color.green)
                .frame(width: 150, height: 150, alignment: .center)
                .background(Color.red)
            
            Text("Hello, World!")
                .background(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
                .background(Color.yellow)
            
            Text("Hello, World!")
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 150)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(Color.pink)
                .frame(height: 200, alignment: .top)
                .background(Color.brown)
        }
    }
}

#Preview {
    FrameBootcamp()
}
