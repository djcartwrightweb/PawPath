//
//  SettingsNotificationsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-05.
//

import SwiftUI

struct SettingsNotificationsView: View {
    
    @Binding var settings: SettingsModel
    
    var body: some View {

        Section("Notifications:") {
            
            Toggle(isOn: $settings.notifyNewTrailAdded) {
                Text("New Trail Added")
                    .font(.subheadline)
            }
            .tint(Color.teal.opacity(0.7))
            .padding(.horizontal)
            
            Toggle(isOn: $settings.notifyWeatherAlert) {
                Text("Trail Weather Alerts")
                    .font(.subheadline)
            }
            .tint(Color.teal.opacity(0.7))
            .padding(.horizontal)
            
            Toggle(isOn: $settings.notifyUpdates) {
                Text("App Updates")
                    .font(.subheadline)
            }
            .tint(Color.teal.opacity(0.7))
            .padding(.horizontal)
            
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    SettingsNotificationsView(settings: .constant(SettingsModel()))
}
