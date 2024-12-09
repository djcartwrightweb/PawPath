//
//  TrailMapView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-09.
//

import SwiftUI
import MapKit

struct TrailMapView: View {
    
    let latitude: Double
    let longitude: Double
    

    
    var body: some View {
        Map {
            Marker("Trail Start!", systemImage: "figure.walk", coordinate: CLLocationCoordinate2D(
                latitude: latitude,
                longitude: longitude
            ))
        }   .mapStyle(.imagery(elevation: .realistic))
            .frame(width: 300, height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 10)
    }
    
    
}

#Preview {
    TrailMapView(
        latitude: TrailModel.sampleTrail.coordinates.latitude,
        longitude: TrailModel.sampleTrail.coordinates.longitude
    )
}
