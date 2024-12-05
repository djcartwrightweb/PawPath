//
//  SettingsViewModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-05.
//

import Foundation

@Observable class SettingsViewModel {
    
    var mySettings: SettingsModel = SettingsModel()
    private var settingsKey: String = "paw_path_settings"
    
    init() {}
    
    func saveSettings() {
        if let encodedData = try? JSONEncoder().encode(mySettings) {
            print("saving settings...")
            UserDefaults.standard.set(encodedData, forKey: settingsKey)
        }
    }
    
    func getSettings() {
        guard
            let data = UserDefaults.standard.data(forKey: settingsKey),
            let savedSettings = try? JSONDecoder().decode(SettingsModel.self, from: data)
        else {
            return
        }
        print("getting settings...")
        self.mySettings = savedSettings
    }
}
