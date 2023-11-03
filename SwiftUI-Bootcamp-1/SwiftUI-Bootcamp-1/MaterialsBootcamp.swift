//
//  MaterialsBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

struct MaterialsBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background {
            AsyncImage(url: url)
        }
    }
}

#Preview {
    MaterialsBootcamp()
}
