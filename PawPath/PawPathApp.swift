//
//  PawPathApp.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-03.
//

import SwiftUI
import SwiftData

@main
struct PawPathApp: App {
    var body: some Scene {
        
        @State var settingsViewModel = SettingsViewModel()
        
        WindowGroup {
            MenuView()
                .environment(settingsViewModel)
                .modelContainer(for: DogModel.self)
        }
    }
}
