//
//  NativePopoverBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 08.12.2023.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button("Click me") {
                showPopover.toggle()
            }
            .padding()
            .background(Color.green)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.bottomLeading)) {
                Text("Hello!")
                    .presentationCompactAdaptation(.popover)
            }
//            .popover(isPresented: $showPopover, content: {
//                Text("Hello!")
//                    .presentationCompactAdaptation(.popover)
//            })
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
