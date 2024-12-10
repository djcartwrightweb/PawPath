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
                HStack {
                    ForEach(park.photos, id: \.self) { photo in
                        Image(photo)
                            .resizable()
                            .frame(
                                width: expandedImage == photo ? UIScreen.main.bounds.width : 200,
                                height: expandedImage == photo ? UIScreen.main.bounds.width : 300
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
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
        
    }
}

#Preview {
    ParkSheetView(park: ParkModel.samplePark)
}


//import SwiftUI
//
//struct ParkSheetView: View {
//    
//    let park: ParkModel
//    @State private var expandedImage: String? = nil // Track which image is expanded
//    @Namespace private var animation // Namespace for the matchedGeometryEffect
//
//    var body: some View {
//        VStack {
//            Text(park.name)
//                .font(.title)
//                .padding()
//
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(park.photos, id: \.self) { photo in
//                        // Conditionally apply matchedGeometryEffect based on if the image is expanded or not
//                        Image(photo)
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: expandedImage == photo ? UIScreen.main.bounds.width : 200,
//                                   height: expandedImage == photo ? UIScreen.main.bounds.height : 300)
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                            .padding()
//                            .matchedGeometryEffect(id: photo, in: animation) // Apply matched geometry effect
//                            .onTapGesture {
//                                withAnimation(.easeInOut(duration: 0.5)) { // Smooth transition animation
//                                    if expandedImage == photo {
//                                        expandedImage = nil // Collapse if tapped again
//                                    } else {
//                                        expandedImage = photo // Expand the tapped image
//                                    }
//                                }
//                            }
//                    }
//                }
//            }
//            Spacer()
//        }
//        .padding()
//        .overlay(
//            // Show the full-screen image if one is selected
//            Group {
//                if let expandedImage = expandedImage {
//                    Image(expandedImage)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                        .background(Color.black.opacity(0.8))
//                        .overlay(
//                            Button(action: {
//                                withAnimation(.easeInOut(duration: 0.5)) {
//                                    self.expandedImage = nil // Close the full-screen image
//                                }
//                            }) {
//                                Image(systemName: "xmark.circle.fill")
//                                    .foregroundColor(.white)
//                                    .font(.system(size: 40))
//                                    .padding()
//                                    .background(Color.black.opacity(0.7), in: Circle())
//                                    .padding()
//                            },
//                            alignment: .topTrailing
//                        )
//                        .matchedGeometryEffect(id: expandedImage, in: animation) // Match the full-screen image's geometry
//                }
//            }
//        )
//    }
//}
//
//#Preview {
//    ParkSheetView(park: ParkModel.samplePark)
//}
