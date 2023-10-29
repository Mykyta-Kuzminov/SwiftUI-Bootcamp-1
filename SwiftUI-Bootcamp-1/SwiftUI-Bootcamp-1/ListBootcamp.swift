//
//  ListBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 29.10.2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits = ["apple", "banana", "orange", "strawberry"]
    @State var veggies = ["tomato", "potato", "cucumber"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                } header: {
                    Text("Fruits")
                }
                
                Section {
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .listRowBackground(Color.green)
                } header: {
                    Text("Veggies")
                }
            }
            .navigationTitle("Grocery List")
            .listStyle(.grouped)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                        .fontWeight(.semibold)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        add(fruit: "Kiwi")
                    } label: {
                        Text("Add")
                            .fontWeight(.semibold)
                    }
                }
            }
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(fruit: String) {
        fruits.append(fruit)
    }
}

#Preview {
    ListBootcamp()
}
