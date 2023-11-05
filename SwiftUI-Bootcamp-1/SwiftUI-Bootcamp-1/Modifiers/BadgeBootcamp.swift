//
//  BadgeBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

// List
// TabView

struct BadgeBootcamp: View {
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                // Створює знак повідомлення
                .badge(3)
            
            Color.green
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .badge("NEW")
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart")
                    Text("Follows")
                }
                .badge(27)
        }
    }
}

#Preview {
    BadgeBootcamp()
}
