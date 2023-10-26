//
//  ForEachBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 26.10.2023.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [Icon] = [.keyboard, .display, .macbook]
    
    var body: some View {
        VStack() {
            Text("Hardware")
                .font(.title)
                .fontWeight(.semibold)
            HStack {
                // Проходить по масиву і створює кожен елемент
                ForEach(data, id: \.self) { item in
                    HardwareView(item: item)
                }
            }
        }
    }
}

struct HardwareView: View {
    
    let item: Icon
    
    var body: some View {
        Image(systemName: item.rawValue)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50)
    }
}

enum Icon: String {
    case keyboard = "keyboard"
    case display = "display"
    case macbook = "macbook"
}

#Preview {
    ForEachBootcamp()
}
