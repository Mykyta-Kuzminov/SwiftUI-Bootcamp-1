//
//  ImageBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 25.10.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        // Додає зображення з assets
        Image("SaulGoodman")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 300)
            .clipped()
        // Змінює зображення за фігурою
            .clipShape(.rect(cornerRadius: 30))
    }
}

#Preview {
    ImageBootcamp()
}
