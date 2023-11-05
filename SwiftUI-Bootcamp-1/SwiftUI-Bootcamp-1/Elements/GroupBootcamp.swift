//
//  GroupBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Об'єднує декілька елементів 
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.title)
            .fontWeight(.semibold)
        }
    }
}

#Preview {
    GroupBootcamp()
}
