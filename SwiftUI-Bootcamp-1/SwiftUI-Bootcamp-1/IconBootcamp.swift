//
//  IconBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 24.10.2023.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            // Додає системну іконку
            Image(systemName: "heart.fill")
                .font(.title)
                .foregroundStyle(.red)
            
            Image(systemName: "house.fill")
                .font(.system(size: 50))
                .foregroundStyle(.green)
     
            Image(systemName: "gearshape.fill")
            // Змінює розмір іконки за дозволеною зоною
                .resizable()
            // Поміщяє іконку в дозволену зону, не заходячи за границі
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.blue)
                .frame(width: 100, height: 100)
            
            Image(systemName: "car.fill")
                .resizable()
            // Поміщяє іконку в дозволену зону, заходячи за границі
                .aspectRatio(contentMode: .fill)
                .foregroundStyle(.gray)
                .frame(width: 100, height: 100)
            // Обрізає іконку по границям місцевості
                .clipped()
            
            Image(systemName: "person.fill.badge.plus")
            // Змінює колір системної іконки
                .renderingMode(.original)
                .font(.largeTitle)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    IconBootcamp()
}
