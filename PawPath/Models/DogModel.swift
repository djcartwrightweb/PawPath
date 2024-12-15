//
//  DogModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-15.
//

import Foundation
import SwiftData

@Model class DogModel {
    @Attribute(.unique) var name: String
    var size: DogSize
    var age: Int //figure out a way to increase this with time - may need to save as date
    
    init(name: String, size: String, age: Int) {
        self.name = name.lowercased()
        self.size = DogSize(from: size)
        self.age = age
    }
}

enum DogSize: Codable {
    case small, medium, large
    
    init(from sizeString: String) {
        switch sizeString.lowercased() {
        case "small":
            self = .small
        case "medium":
            self = .medium
        case "large":
            self = .large
        default:
            self = .medium
        }
    }
}
