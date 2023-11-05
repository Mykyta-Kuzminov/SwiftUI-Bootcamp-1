//
//  EnviromentObjectBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 03.11.2023.
//

import SwiftUI

struct EnvironmentObjectBootcamp: View {
    
    @EnvironmentObject var vm: EnvironmentViewModel
    
    var body: some View {
        ForEach(vm.items) { item in
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
}

#Preview {
    EnvironmentObjectBootcamp()
        .environmentObject(EnvironmentViewModel())
}
