//
//  DatePickerBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 30.10.2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var dateSelection: Date = Date()
    @State var birthdaySelection: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2000)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    
    var body: some View {
        VStack {
            DatePicker("Select a date", selection: $dateSelection, displayedComponents: [.date, .hourAndMinute])
            
            DatePicker("Select birhtday date", selection: $birthdaySelection, in: startingDate...endingDate, displayedComponents: [.date])
            
            Text(dateFormatter.string(from: dateSelection))
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
