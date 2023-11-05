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
                // Адаптивний колір до світлої та темної теми
                    .foregroundStyle(.primary)
                Text("This color is SECONDARY")
                // Адаптивний колір до світлої та темної теми, але другого плану
                    .foregroundStyle(.secondary)
                Text("This color is BLACK")
                // Статичний колір, без адаптації до теми
                    .foregroundStyle(.black)
                Text("This color is WHITE")
                // Статичний колір, без адаптації до теми
                    .foregroundStyle(.white)
                Text("This color is from ASSETS")
                // Колір з assets, адаптивний до теми
                    .foregroundStyle(.adaptive)
                
            }
            .font(.title2)
            .fontWeight(.semibold)
        }
    }
}

#Preview("Light") {
    DarkModeBootcamp()
    // Віддає перевагу світлій тем
        .preferredColorScheme(.light)
}

#Preview("Dark") {
    DarkModeBootcamp()
    // Віддає перевагу темній тем
        .preferredColorScheme(.dark)
}
