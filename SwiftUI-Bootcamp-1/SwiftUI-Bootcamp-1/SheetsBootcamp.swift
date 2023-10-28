//
//  SheetsBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 28.10.2023.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var isSheet: Bool = false
    @State var isFullScreenCover: Bool = false
    
    var body: some View {
        VStack {
            buttons
        }
        // Зображення, що відкривається не повністю
        .sheet(isPresented: $isSheet) {
            SheetView()
        }
        // Зображення на весь екран
        .fullScreenCover(isPresented: $isFullScreenCover) {
            FullScreenCoverView()
        }
    }
    
    var buttons: some View {
        VStack {
            ButtonView(title: "Show Sheet", state: $isSheet)
            ButtonView(title: "Show FullScreenCover", state: $isFullScreenCover)
        }
    }
}

struct ButtonView: View {
    
    let title: String
    @Binding var state: Bool
    
    var body: some View {
        Button {
            state.toggle()
        } label: {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
                .frame(width: 300, height: 60)
                .background(.white)
                .clipShape(.rect(cornerRadius: 20))
        }
    }
}

struct SheetView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Sheet")
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
            }
        }
    }
}

struct FullScreenCoverView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 50) {
            Text("FullScreenCover")
            Image(systemName: "xmark")
                .onTapGesture {
                    dismiss()
                }
        }
    }
}

#Preview {
    SheetsBootcamp()
}
