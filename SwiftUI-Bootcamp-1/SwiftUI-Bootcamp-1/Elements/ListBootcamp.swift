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
            // Створює список
            List {
                // Створює секції в списку
                Section {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    // Модифікатор за допомогою якого можна видаляти елементи зі списку
                    .onDelete(perform: delete)
                    // Модифікатор за допомогою якого можна змінювати місце елемента в списку
                    .onMove(perform: move)
                    // Змінює задній колір ряду
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
            // Створює заголовок сторінки
            .navigationTitle("Grocery List")
            // Змінює стиль списку
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
    
    // Функція для видалення елемента
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    // Функція для пересування елементів
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    // Функція для додавання елементів
    func add(fruit: String) {
        fruits.append(fruit)
    }
}

#Preview {
    ListBootcamp()
}
