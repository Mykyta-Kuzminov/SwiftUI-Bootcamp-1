//
//  AnyLayoutBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 09.12.2023.
//

import SwiftUI

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSize
    @Environment(\.verticalSizeClass) var verticalSize
    
    var body: some View {
        VStack {
            
            // Змінює Stack за орієнтацію екрану
            let layout: AnyLayout = verticalSize == .regular ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            // Показує орієнтацію екрану вертикально та горизонтально
            Text(horizontalSize.debugDescription)
            Text(verticalSize.debugDescription)
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            .font(.headline)
        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
