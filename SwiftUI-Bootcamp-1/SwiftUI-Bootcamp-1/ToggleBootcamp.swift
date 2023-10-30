//
//  ToggleBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 30.10.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                Toggle(isOn: $isOn) {
                    Text("Dark/Light Theme")
                }
                .padding()
                .toggleStyle(.button)
                .tint(.red)
                
                Toggle(isOn: $isOn) {
                    Text("Dark/Light Theme")
                }
                .padding()
                .toggleStyle(.switch)
                .tint(.pink)
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ToggleBootcamp()
}
