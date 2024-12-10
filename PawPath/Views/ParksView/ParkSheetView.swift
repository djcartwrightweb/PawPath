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
            Color.teal.opacity(0.3).ignoresSafeArea(edges: .top)
            
            VStack {
                Text(park.name)
                    .font(.title)
                    .fontDesign(.serif)
                
                Divider()
                    .padding(.horizontal)
                
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
                
                Divider()
                    .padding(.horizontal)
                    .padding(.bottom)
                
                
                
                HStack(alignment: .top) {
                    Text("Rules:")
                        .font(.headline)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            Text("Leash Required:")
                                .padding(.trailing)
                            Image(systemName: park.rules.leashRequired ? "checkmark.circle.fill" : "circle.slash")
                                        .foregroundColor(park.rules.leashRequired ? .green : .red)
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Text("Clean Up After:")
                                .padding(.trailing)
                            Image(systemName: park.rules.cleanupRequired ? "checkmark.circle.fill" : "circle.slash")
                                        .foregroundColor(park.rules.cleanupRequired ? .green : .red)
                        }
                        .padding(.horizontal)
                    }
                    
                }
                .fontDesign(.serif)
                .padding(.horizontal)
                
                Divider()
                    .padding()
                
                HStack(alignment: .top) {
                    Text("Dog\nAmenities:")
                        .font(.headline)
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        HStack {
                            Text("Water Stations:")
                                .padding(.trailing)
                            Image(systemName: "drop.fill")
                                .foregroundStyle(.blue)
                            Image(systemName: park.dogAmenities.waterStations ? "checkmark.circle.fill" : "circle.slash")
                                .foregroundColor(park.dogAmenities.waterStations ? .green : .red)
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Text("Garbages in Area:")
                                .padding(.trailing)
                            Image(systemName: "trash.fill")
                                .foregroundStyle(.gray)
                            Image(systemName: park.dogAmenities.wasteStations ? "checkmark.circle.fill" : "circle.slash")
                                .foregroundColor(park.dogAmenities.wasteStations ? .green : .red)
                        }
                        .padding(.horizontal)
                        
                        HStack {
                            Text("Off-Leash Areas:")
                                .padding(.trailing)
                            Image(systemName: "dog.fill")
                                .foregroundStyle(.brown)
                            Image(systemName: park.dogAmenities.offLeashAreas ? "checkmark.circle.fill" : "circle.slash")
                                .foregroundColor(park.dogAmenities.offLeashAreas ? .green : .red)
                        }
                        .padding(.horizontal)
                    }
                }
                .fontDesign(.serif)
                .padding(.horizontal)
                
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
}

#Preview {
    ParkSheetView(park: ParkModel.samplePark)
}

