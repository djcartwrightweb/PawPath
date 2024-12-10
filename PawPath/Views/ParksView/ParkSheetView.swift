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
        
        VStack {
            Text(park.name)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(park.photos, id: \.self) { photo in
                        Image(photo)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .frame(
                                width: expandedImage == photo ? UIScreen.main.bounds.width : 300,
                                height: expandedImage == photo ? UIScreen.main.bounds.height : 300
                            )
                            .onTapGesture {
                                if expandedImage == photo {
                                    expandedImage = nil
                                } else {
                                    expandedImage = photo
                                }
                            }
                    }
                }
            }
            
            //show on map button
            //click images to transition into a full size image
            //use common SF symbols to display information about the park?
            //rules section
            //dog amenities
            //accessibility
            //hours
        }
        .overlay(
            // If an image is expanded, display the full-screen view
            Group {
                if let expandedImage = expandedImage {
                    Color.black  // Dim background
                        .edgesIgnoringSafeArea(.all)  // Cover the entire screen
                    
                    Image(expandedImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                        .onTapGesture {
                            // Close the enlarged image when tapped
                            self.expandedImage = nil
                        }
                        .zIndex(1)  // Make sure it appears above other views
                }
            }
        )
    }
}

#Preview {
    ParkSheetView(park: ParkModel.samplePark)
}

