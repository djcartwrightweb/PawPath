//
//  SettingsTrackingView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-05.
//

import SwiftUI

struct SettingsTrackingView: View {
    
    @Binding var settings: SettingsModel
    
    var body: some View {
        
        Section("Distance Tracking:") {
            Picker("Distance Tracking", selection: $settings.selectedTracking) {
                Text("gps").tag(TrackingMethod.gps)
                Text("steps").tag(TrackingMethod.steps)
                Text("off").tag(TrackingMethod.off)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    SettingsTrackingView(settings: .constant(SettingsModel()))
}
