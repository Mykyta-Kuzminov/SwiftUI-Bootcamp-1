//
//  AsyncImageBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/150")
    
    var body: some View {
        VStack {
            // Звичайна картинка за посиланням
            AsyncImage(url: url)
            
            // Звичайна картинка за посилання зі збільшенням
            AsyncImage(url: url, scale: 1.2)
            
            // Звичайна картинка за посиланням, що має задній фон, коли зображення ще нема
            AsyncImage(url: url) { image in
                // Зображення
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            } placeholder: {
                // Якщо зображення ще нема
                ProgressView()
            }
            
            /*
             Звичайна картинка за посиланням, що має декілька станів:
             1. Пустий стан, коли зображення ще завантажується (Як placeholder)
             2. Стан успіху, тобто коли зображення з'явилося
             3. Стан помилки, коли зображення не з'явилось і ми можемо побачити помилку
             */
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                case .failure(let error):
                    Text("\(error.localizedDescription)")
                default:
                    Image(systemName: "questionmark")
                }
            }

        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
