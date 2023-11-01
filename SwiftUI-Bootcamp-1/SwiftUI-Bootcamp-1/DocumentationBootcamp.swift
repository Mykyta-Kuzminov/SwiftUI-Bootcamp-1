//
//  DocumentationBootcamp.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 01.11.2023.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    // MARK: BODY

    /*
     Working copy - things to do:
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        Text("Hello, World!")
    }
    
    // MARK: FUNCTIONS
    
    
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message
    ///
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
