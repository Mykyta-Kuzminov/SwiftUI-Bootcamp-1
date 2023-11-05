//
//  SwipeActionBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

struct SwipeActionBootcamp: View {
    
    @State var items: [String] = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
                    // Додає можливість робити різні дії з елементом зі списку
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Junk") {
                            //action
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .trailing,
                                  allowsFullSwipe: false) {
                        Button("Share") {
                            //action
                        }
                        .tint(.pink)
                        
                        Button("Report") {
                            //action
                        }
                        .tint(.black)
                    }
            }
        }
    }
}

#Preview {
    SwipeActionBootcamp()
}
