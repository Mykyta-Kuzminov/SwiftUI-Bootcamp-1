//
//  SwiftUI_Bootcamp_1App.swift
//  SwiftUI-Bootcamp-1
//
//  Created by Микита Кузьмінов on 24.10.2023.
//

import SwiftUI

@main
struct SwiftUI_Bootcamp_1App: App {
    
    @StateObject var environmentViewModel = EnvironmentViewModel()
    
    var body: some Scene {
        WindowGroup {
            SubmitTextFieldBootcamp()
                .environmentObject(environmentViewModel)
        }
    }
}
