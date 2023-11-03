//
//  AppStorageBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @State var textFieldText: String = ""
    @AppStorage("currentName") var currentName = "None-name"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Your current name: \(currentName)")
            
            TextField("Put your name here...", text: $textFieldText)
                .font(.title3)
                .fontWeight(.semibold)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .background(.thinMaterial)
                .clipShape(.rect(cornerRadius: 30))
            
            Button {
                currentName = textFieldText
                textFieldText = ""
            } label: {
                Text("Save".uppercased())
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 30))
            }
        }
        .padding()
    }
}

#Preview {
    AppStorageBootcamp()
}
