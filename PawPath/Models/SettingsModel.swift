//
//  SettingsModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import Foundation

enum MeasurementUnit {
    case kms, miles
}

enum MapStyle {
    case standard, satellite, hybrid
}

enum TrackingMethod {
    case gps, steps, off
}



struct SettingsModel {
    
    //personal details that may not be used:
    //var name: String = ""
    //var email: String = ""
    
    //activity challenges
    var wantsChallenges: Bool = true
    
    //distance tracking options
    var selectedTracking: TrackingMethod = .gps
    
    //pickers at top
    var selectedMeasurementUnit: MeasurementUnit = .kms
    var selectedMapStyle: MapStyle = .standard
    
    //notification toggles
    var notifyNewTrailAdded = true
    var notifyWeatherAlert = false
    var notifyUpdates = true
    
    //activity tracking?
    var activityTracking = false //when turning this on, expose more view?
    
}
