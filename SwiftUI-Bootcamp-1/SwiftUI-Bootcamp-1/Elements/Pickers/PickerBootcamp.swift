//
//  PickerBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 30.10.2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var firstSelection = "None"
    @State var secondSelection = "18"
    
    @State var sexData: [String] = ["None", "Male", "Female"]
    
    var body: some View {
        VStack {
            Picker(selection: $firstSelection) {
                ForEach(sexData, id: \.self) { item in
                    Text(item).tag(item)
                }
            } label: {
                Text("Sex:")
            }
            .pickerStyle(.segmented)
            
            Picker(selection: $secondSelection) {
                ForEach(18..<101) { index in
                    Text("\(index)").tag("\(index)")
                }
            } label: {
                Text("Your age:")
            }
            .pickerStyle(.wheel)


        }
    }
}

#Preview {
    PickerBootcamp()
}
