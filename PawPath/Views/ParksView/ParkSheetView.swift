//
//  ParksSheetView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-10.
//
import SwiftUI

struct ParkSheetView: View {
    
    let park: ParkModel
    
    @State private var expandedImage: String? = nil
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack {
                Text(park.name)
                    .font(.title)
                    .fontDesign(.serif)
                
                Divider()
                    .padding(.horizontal)
                
                ParkSheetPhotosView(park: park, expandedImage: $expandedImage)
                
                Divider()
                    .padding(.horizontal)
                    .padding(.bottom)
                
                ParkSheetRulesView(park: park)
                
                Divider()
                    .padding()
                
                ParkSheetAmenitiesView(park: park)
                
                Divider()
                    .padding()
                
                //change accessiblity features into Bool and use the following:
                //parking
                //restrooms
                //rest areas
                //shade
                
                //show on map button

                
                //dog amenities
                //accessibility
                //hours
            }
            .overlay(
                // If an image is expanded, display the full-screen view

                ParkSheetPhotoOverlayView(expandedImage: $expandedImage)
            )
        }
    }
}

#Preview {
    ParkSheetView(park: ParkModel.samplePark)
}

