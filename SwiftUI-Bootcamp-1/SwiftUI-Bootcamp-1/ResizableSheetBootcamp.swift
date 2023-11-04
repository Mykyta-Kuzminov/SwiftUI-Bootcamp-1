//
//  ResizableSheetBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 04.11.2023.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var selection: PresentationDetent = .medium
    
    var body: some View {
        Button("Click on me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(selection: $selection)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.60), .height(300)])
                .presentationDetents([.large, .medium], selection: $selection)
                .presentationDragIndicator(.visible)
        }
    }
}

struct MyNextView: View {
    
    @Binding var selection: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
                .onTapGesture {
                    selection = .large
                }
            
            Text("Hello, World!")
        }
    }
}

#Preview {
    ResizableSheetBootcamp()
}
