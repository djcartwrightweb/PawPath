//
//  TrailDetailsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI
import MapKit

struct TrailDetailsView: View {
    
    let trail: TrailModel
//    private let trailStartCoord = CLLocationCoordinate2D(latitude: trail.coordinates.latitude, longitude: trail.coordinates.longitude)
    
    var body: some View {
        VStack {
            Text(trail.name.capitalized)
                .font(.headline)
                .fontWeight(.semibold)
                .fontDesign(.serif)
                .padding()
            
            //            Image(trail.photos[0])
            //                .resizable()
            //                .frame(width: 300, height: 400)
            //                .clipShape(RoundedRectangle(cornerRadius: 10))
            //                .shadow(radius: 10)
            
            TrailMapView(
                latitude: trail.coordinates.latitude,
                longitude: trail.coordinates.longitude
            )
            
            Divider()
                .padding()
            
            Text(trail.description)
                .fontDesign(.serif)
                .font(.subheadline)
                .padding()
                .onTapGesture {
                    print(trail)
                }
            
            Divider()
                .padding()
            
            
            HStack(spacing: 0) {
                Spacer()
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
                Image(systemName: "star.fill")
                    .foregroundStyle(Color.yellow)
            }
            .padding(.horizontal)
            .font(.headline)
            
            Spacer()
            
        }
    }
}

#Preview {
    TrailView(trail: TrailModel.sampleTrail)
}
