//
//  SubmitTextFieldBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    
    @State private var username: String = ""
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
            
            TextField("Add your username here...", text: $username)
                .padding(.horizontal)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .clipShape(.rect(cornerRadius: 10))
                .submitLabel(.continue)
                .onSubmit {
                    withAnimation(.default) {
                        text = username
                        username = ""
                    }
                }
        }
        .padding()
    }
}

#Preview {
    SubmitTextFieldBootcamp()
}
