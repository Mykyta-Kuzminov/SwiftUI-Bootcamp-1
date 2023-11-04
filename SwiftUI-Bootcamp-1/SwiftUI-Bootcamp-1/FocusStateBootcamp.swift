//
//  FocusStateBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @FocusState private var fieldInFocus: OnboardingField?
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Add your username here...", text: $username)
                .focused($fieldInFocus, equals: .username)
                .padding(.horizontal)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .clipShape(.rect(cornerRadius: 10))
            
            TextField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.horizontal)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .clipShape(.rect(cornerRadius: 10))
                .keyboardType(.numberPad)
            
            Button {
                textIsAppropriate()
            } label: {
                Text("Sign Up")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            .buttonStyle(.borderedProminent)
                
        }
        .padding()
    }
    
    func textIsAppropriate() {
        let username = username.count > 5 ? true : false
        let password = password.count > 5 ? true : false
        
        if username && password {
            clearFields()
        } else if username {
            fieldInFocus = .password
        } else {
            fieldInFocus = .username
        }
    }
    
    func clearFields() {
        username = ""
        password = ""
    }
}

#Preview {
    FocusStateBootcamp()
}
