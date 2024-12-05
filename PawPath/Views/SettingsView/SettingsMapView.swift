//
//  SettingsMapView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-05.
//

import SwiftUI

struct SettingsMapView: View {
    
    @Binding var settings: SettingsModel
    
    var body: some View {

        Section("Map:") {
            Picker("Map Style", selection: $settings.selectedMapStyle) {
                Text("standard").tag(MapStyle.standard)
                Text("satellite").tag(MapStyle.satellite)
                Text("hybrid").tag(MapStyle.hybrid)
            }
            .pickerStyle(.segmented)
            .padding()
            Picker("Unit of measurement", selection: $settings.selectedMeasurementUnit) {
                Text("kms").tag(MeasurementUnit.kms)
                Text("miles").tag(MeasurementUnit.miles)
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    SettingsMapView(settings: .constant(SettingsModel()))
}
