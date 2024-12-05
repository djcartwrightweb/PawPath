//
//  SettingsChallengesView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-05.
//

import SwiftUI

struct SettingsChallengesView: View {
    
    @Binding var settings: SettingsModel
    
    var body: some View {
        
        Section("Challenges:") {
            Toggle(isOn: $settings.wantsChallenges) {
                Text("Custom Challenges Active")
                    .font(.subheadline)
            }
            .tint(Color.teal.opacity(0.7))
            .padding(.horizontal)
        }
        
    }
}

#Preview {
    SettingsChallengesView(settings: .constant(SettingsModel()))
}
