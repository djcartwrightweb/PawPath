//
//  MapsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        
        ZStack {
            Color.teal.opacity(0.2).ignoresSafeArea(edges: .top)
            
            Text("Map")
        }
        
    }
}

#Preview {
    MapView()
}
