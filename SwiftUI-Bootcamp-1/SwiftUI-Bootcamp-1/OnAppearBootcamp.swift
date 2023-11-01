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
        .onAppear {
            withAnimation(.default) {
                isDownloaded = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation(.default) {
                    title = "Hello!"
                    isDownloaded = false
                }
            }
        }
        .onDisappear {
            title = ""
        }
    }
}

// MARK: PREVIEW

#Preview {
    OnAppearBootcamp()
}
