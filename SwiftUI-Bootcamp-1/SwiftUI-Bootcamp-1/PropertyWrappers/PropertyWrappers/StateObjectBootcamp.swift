//
//  StateObjectBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 02.11.2023.
//

import SwiftUI

struct StateObjectBootcamp: View {
    
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 60) {
            List {
                ForEach(viewModel.items) { item in
                    HStack {
                        Text(item.title)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 120, alignment: .leading)
                        
                        Spacer()
                        Text("**$**\(item.price)")
                            .font(.title2)
                            .frame(width: 40, alignment: .leading)
                        
                        Spacer()
                        Text("\(item.code)")
                            .frame(width: 80, alignment: .center)
                    }
                }
            }
            
            ObservedObjectBootcamp(viewModel: viewModel)
            
            Text("Add new Item")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .frame(width: 250, height: 60)
                .background(Color.blue)
                .clipShape(.rect(cornerRadius: 30))
                .onTapGesture {
                    withAnimation(.default) {
                        viewModel.addItem(item: Model(title: "Apple", price: 2, code: 235))
                    }
                }
            
            Stepper("Stepper: **\(viewModel.selection)**", value: $viewModel.selection, step: 1)
        }
        .padding()
    }
}

#Preview {
    StateObjectBootcamp()
}
