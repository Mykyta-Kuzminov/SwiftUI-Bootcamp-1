//
//  TabViewBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 31.10.2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: String = "Profile"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView().body.tabItem {
                Label("Home", systemImage: "house")
            }
            .tag("House")
            
            ProfileView().body.tabItem {
                Label("Profile", systemImage: "person")
            }
            .tag("Profile")
            
            SettingsView().body.tabItem {
                Label("Settings", systemImage: "gearshape")
            }
            .tag("Settings")
        }
        .tint(Color.cyan)
    }
}

struct HomeView {
    var body: some View {
        Image(systemName: "house")
            .font(.system(size: 100))
    }
}

struct ProfileView {
    var body: some View {
        Image(systemName: "person")
            .font(.system(size: 100))
    }
}

#Preview {
    TabViewBootcamp()
}
