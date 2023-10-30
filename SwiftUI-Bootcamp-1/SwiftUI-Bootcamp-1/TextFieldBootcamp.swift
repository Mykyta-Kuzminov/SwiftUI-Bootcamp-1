//
//  TextFieldBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 30.10.2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var data: [String] = []
    @State var textFieldText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 60)
                    .background(.thinMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                
                Button {
                    add()
                } label: {
                    Text("Add")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadius: 20))
                }
                .disabled(!appropriate())
                
                List {
                    ForEach(data, id: \.self) { item in
                        Text(item)
                    }
                }
                .listStyle(.grouped)
            }
            .padding()
            .navigationTitle("TextField")
        }
    }
    
    func add() {
        data.append(textFieldText)
    }
    
    func appropriate() -> Bool {
        if textFieldText.count > 5 {
            return true
        }
        
        return false
    }
}

#Preview {
    TextFieldBootcamp()
}
