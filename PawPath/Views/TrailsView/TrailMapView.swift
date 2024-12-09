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
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
    
    var span: MKCoordinateSpan {
        MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    }
    
    var body: some View {
        Map(
            initialPosition:
                    .region(MKCoordinateRegion(
                        center: coordinate,
                        span: span)
                    )
        ) {
            Marker("Trail Start!", systemImage: "figure.walk", coordinate: coordinate)
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
