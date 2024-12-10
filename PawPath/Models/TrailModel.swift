//
//  TrailModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import Foundation

struct TrailModel: Codable, Identifiable {
    let id: String = UUID().uuidString
    let trailID: Int
    let name, description, location: String
    let coordinates: Coordinates
    let photos: [String]
    let difficulty, terrain: String
    let length: Double
    let duration, elevationGain: Int
    let facilities: [String]
    let dogFriendlyRating: Int
    let dogAmenities: DogAmenities
    let rules: Rules
    let waterSources, parkingAvailability: String
    let nearbyAmenities: [String]

    enum CodingKeys: String, CodingKey {
        case trailID = "trailId"
        case name, description, location, coordinates, photos, difficulty, terrain, length, duration, elevationGain, facilities, dogFriendlyRating, dogAmenities, rules, waterSources, parkingAvailability, nearbyAmenities
    }
    
    static let allTrails: [TrailModel] = Bundle.main.decode(file: "trails.json")
    static let sampleTrail: TrailModel = allTrails[0]
}


