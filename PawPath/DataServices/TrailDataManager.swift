//
//  TrailDataManager.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-06.
//

import Foundation
import MapKit

struct TrailModel2: Codable, Hashable {
    let trailId: Int
    let name: String
    let description: String
    let location: String
    let coordinates: [[String: Double]]
    let photos: [String]
    let difficulty: String
    let terrain: String
    let length: Double
    let duration: Int
    let elevationGain: Int
    let facilities: [String]
    let dogFriendlyRating: Int
    let dogAmenities: [[String: Bool]]
    let rules: [[String: Bool]]
    let waterSources: String
    let parkingAvailability: String
    let nearbyAmenities: [String]
}





class TrailDataManager {
    
    
    
    init() {}
}
