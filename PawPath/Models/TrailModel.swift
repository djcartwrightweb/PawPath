//
//  TrailModel.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import Foundation

struct TrailModel: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var description: String = """
    This is just a short description that I may just steal from Wikipedia later but it represents a multiline string on the backend that I still need to program in properly.    
    """
}
