//
//  AlertBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 29.10.2023.
//

import SwiftUI

enum AlertType {
    case none
    case success
    case failure
}

struct AlertBootcamp: View {

    @State var alertType: AlertType = .none
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Button {
                alertType = .success
                showAlert.toggle()
            } label: {
                Text("Success")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.black)
                    .frame(width: 200, height: 60)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 15))
            }
            
            Button {
                alertType = .failure
                showAlert.toggle()
            } label: {
                Text("Failure")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.black)
                    .frame(width: 200, height: 60)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 15))
            }
        }
        // Виводить на екран повідомлення при зміні значення змінної
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    // Функція що повертає нам повідомлення в залежності від ситуації
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            Alert(title: Text("Success"),
                  message: Text("Operation was ended"),
                  dismissButton: .cancel(Text("Back")))
        case .failure:
            Alert(title: Text("Failure"),
                  primaryButton: .cancel(Text("Back")),
                  secondaryButton: .destructive(Text("Try again")))
        default:
            Alert(title: Text("Default"))
        }
    }
}

#Preview {
    AlertBootcamp()
}
