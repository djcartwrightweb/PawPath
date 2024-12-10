//
//  SharedModels.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-10.
//

import Foundation

struct Coordinates: Codable {
    let latitude, longitude: Double
}

struct DogAmenities: Codable {
    let waterStations, wasteStations, offLeashAreas: Bool
}

struct Rules: Codable {
    let leashRequired, cleanupRequired: Bool
}
