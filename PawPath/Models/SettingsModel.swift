//
//  SettingsModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import Foundation

enum MeasurementUnit: Codable {
    case kms, miles
}

enum MapStyle: Codable {
    case standard, satellite, hybrid
}

enum TrackingMethod: Codable {
    case gps, steps, off
}



struct SettingsModel: Codable, Equatable {
    
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



/*
 
 possible to use didset?
 possible to return a new struct each time a change is made and then save it this way
 how to go about loading userdefaults and binding to settings?
 
 */
