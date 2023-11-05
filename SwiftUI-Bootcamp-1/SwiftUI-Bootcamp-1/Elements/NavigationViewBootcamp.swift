//
//  NavigationViewBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 28.10.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        // Створює зону с елементами навігації
        NavigationView {
            ListView()
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink {
                            SettingsView()
                        } label: {
                            Image(systemName: "gearshape")
                                .scaleEffect(1.3)
                                .fontWeight(.bold)
                        }

                    }
                    
                    ToolbarItem(placement: .topBarLeading) {
                        NavigationLink {
                            FolderView()
                        } label: {
                            Image(systemName: "folder")
                                .scaleEffect(1.3)
                                .fontWeight(.bold)
                        }

                    }
                    
                    ToolbarItem(placement: .principal) {
                        Text("ListView")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                .tint(.primary)
        }
    }
}

struct ListView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<21) { _ in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.primary)
                        .frame(width: 350, height: 200)
                        .padding(5)
                }
            }
        }
    }
}

struct SettingsView: View {
    var body: some View {
        Image(systemName: "gearshape")
            .font(.system(size: 100))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Settings View")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
    }
}

struct FolderView: View {
    var body: some View {
        Image(systemName: "folder")
            .font(.system(size: 100))
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Folder View")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
    }
}

#Preview {
    NavigationViewBootcamp()
}
