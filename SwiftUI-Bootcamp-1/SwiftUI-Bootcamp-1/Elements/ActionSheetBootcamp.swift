//
//  ActionSheetBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 29.10.2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .tint(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 350)
        }
        // Виводить зображення з кнопками
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    // Функція що повертає ActionSheet з кнопками, які ми створили
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share"))
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report"))
        
        let saveButton: ActionSheet.Button = .default(Text("Save"))
        
        let cancelButton: ActionSheet.Button = .cancel(Text("Cancel"))
        
        return ActionSheet(title: Text("Actions"), message: Text("What would you like to do?"), buttons: [shareButton, reportButton, saveButton, cancelButton])
    }
}

#Preview {
    ActionSheetBootcamp()
}
