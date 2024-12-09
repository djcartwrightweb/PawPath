//
//  TrailDataManager.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-06.
//

import Foundation
import MapKit

//struct TrailModel2: Codable, Hashable {
//    let trailId: Int
//    let name: String
//    let description: String
//    let location: String
//    let coordinates: [[String: Double]]
//    let photos: [String]
//    let difficulty: String
//    let terrain: String
//    let length: Double
//    let duration: Int
//    let elevationGain: Int
//    let facilities: [String]
//    let dogFriendlyRating: Int
//    let dogAmenities: [[String: Bool]]
//    let rules: [[String: Bool]]
//    let waterSources: String
//    let parkingAvailability: String
//    let nearbyAmenities: [String]
//}





extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("*** Could not find the \(file) in the project! ***")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("*** Could not load the \(url) in the project! ***")
        }
        
        guard let loadedData = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("*** Could not decode \(data) in the project! ***")
        }
        
        return loadedData
    }
}
