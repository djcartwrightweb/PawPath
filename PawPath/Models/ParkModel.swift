//
//  ParkModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-10.
//

import Foundation




struct ParkModel: Codable, Identifiable {
    let id, name, location, hours, size: String
    let accessibility: String
    let coordinates: Coordinates
    let dogAmenities: DogAmenities
    let rules: Rules
    let photos: [String]
    
    static let allParks: [ParkModel] = Bundle.main.decode(file: "parks.json")
    static let samplePark: ParkModel = allParks[0]
}

