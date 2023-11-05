//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 25.10.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        VStack(spacing: 70) {
            Text("Hello, World!")
            // Змінює задній фон в залежності від того, що в нього покласти
                .background {
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                }
                .background {
                    Circle()
                        .fill(Color.red)
                        .frame(width: 120, height: 120)
                }
            
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
            // Змінює передній фон в залежності від того, що внього покласти
                .overlay {
                    Text("1")
                        .font(.largeTitle)
                        .foregroundStyle(Color.white)
                }
                .background {
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120)
                }
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 100, height: 100)
            // Overlay має своє вирівнювання
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 50, height: 50)
                    , alignment: .topTrailing
                )
            // Background має своє вирівнювання
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    , alignment: .leading
                )
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .fill(LinearGradient(
                            colors: [.purple, .pink],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing))
                        .frame(width: 100, height: 100)
                        .shadow(color: .pink, radius: 10, x: 0.0, y: 10.0)
                        .overlay(
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35)
                                .overlay {
                                    Text("5")
                                        .font(.headline)
                                        .foregroundStyle(Color.white)
                                }
                                .shadow(color: .pink, radius: 10, x: 5.0, y: 5.0)
                            
                            , alignment: .bottomTrailing
                        )
                )
        }
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
