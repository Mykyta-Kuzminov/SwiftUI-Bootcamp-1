//
//  DarkModeBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 31.10.2023.
//

import SwiftUI

struct DarkModeBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("This color is PRIMARY")
                    .foregroundStyle(.primary)
                Text("This color is SECONDARY")
                    .foregroundStyle(.secondary)
                Text("This color is BLACK")
                    .foregroundStyle(.black)
                Text("This color is WHITE")
                    .foregroundStyle(.white)
                Text("This color is from ASSETS")
                    .foregroundStyle(.adaptive)
                
            }
            .font(.title2)
            .fontWeight(.semibold)
        }
    }
}

#Preview("Light") {
    DarkModeBootcamp()
        .preferredColorScheme(.light)
}

#Preview("Dark") {
    DarkModeBootcamp()
        .preferredColorScheme(.dark)
}
