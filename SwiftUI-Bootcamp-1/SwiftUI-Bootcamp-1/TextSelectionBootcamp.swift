//
//  TextSelectionBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        VStack(spacing: 100) {
            Text("Hello, World!")
            // Використовуємо для того, щоб користувач міг копіювати та ділитися цим текстом
                .textSelection(.enabled)

        }
    }
}

#Preview {
    TextSelectionBootcamp()
}
