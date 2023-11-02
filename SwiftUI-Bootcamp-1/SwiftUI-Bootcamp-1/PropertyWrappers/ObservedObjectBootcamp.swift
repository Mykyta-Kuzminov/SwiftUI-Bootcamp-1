//
//  ObservableObjectBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 02.11.2023.
//

import SwiftUI

struct ObservedObjectBootcamp: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        HStack {
            Text(viewModel.items[1].title)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(width: 120, alignment: .leading)
            
            Spacer()
            Text("**$**\(viewModel.items[1].price)")
                .font(.title2)
                .frame(width: 40, alignment: .leading)
            
            Spacer()
            Text("\(viewModel.items[1].code)")
                .frame(width: 80, alignment: .center)
        }
    }
}

#Preview {
    ObservedObjectBootcamp(viewModel: ViewModel())
}
