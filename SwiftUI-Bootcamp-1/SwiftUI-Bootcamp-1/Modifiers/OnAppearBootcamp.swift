//
//  OnAppearBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 01.11.2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var isDownloaded: Bool = false
    @State var title: String = ""
    
    // MARK: BODY
    
    var body: some View {
        VStack {
            if isDownloaded {
                ProgressView()
            } else {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }
        // Виконує код, коли користувач заходить на екран
        .onAppear {
            withAnimation(.default) {
                isDownloaded = true
            }
            
            // Робить затримку
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.default) {
                    title = "Hello!"
                    isDownloaded = false
                }
            }
        }
        // Виконує код, коли користувач виходить з екрану
        .onDisappear {
            title = ""
        }
    }
}

// MARK: PREVIEW

#Preview {
    OnAppearBootcamp()
}
