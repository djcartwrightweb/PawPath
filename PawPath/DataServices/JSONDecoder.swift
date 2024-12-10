//
//  TrailDataManager.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-06.
//

import Foundation
import MapKit


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
