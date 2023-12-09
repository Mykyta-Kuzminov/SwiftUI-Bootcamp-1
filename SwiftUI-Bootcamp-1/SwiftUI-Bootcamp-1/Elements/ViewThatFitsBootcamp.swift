//
//  ViewThatFitsBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 09.12.2023.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        VStack {
            
            // Обирає View, що підійде під розмір
            ViewThatFits {
                Text("This is some text that I would like to display to user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
            .frame(width: 200, height: 100)
            .background(Color.red)
            
            ViewThatFits {
                Text("This is some text that I would like to display to user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
            .frame(width: 350, height: 100)
            .background(Color.green)
            
            ViewThatFits {
                Text("This is some text that I would like to display to user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
            .frame(width: 400, height: 100)
            .background(Color.blue)
        }
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
