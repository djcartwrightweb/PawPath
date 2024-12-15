////
////  Redesign.swift
////  PawPath
////
////  Created by David Cartwright on 2024-12-12.
////
//
//import SwiftUI
//
//struct Redesign: View {
//    
//    
//    let park: ParkModel
//    
//    @State private var expandedImage: String? = nil
//    
//    var body: some View {
//        
//        ZStack {
//            LinearGradient(
//                gradient: Gradient(colors: [
//                    Color.teal.opacity(0.5), // Starting darker teal
//                    Color.teal.opacity(0.3)  // Lighter teal at the top
//                ]),
//                startPoint: .top,
//                endPoint: .bottom
//            )
//            .ignoresSafeArea(edges: .top)
//            
//            VStack {
//                Text(park.name)
//                    .font(.title)
//                    .fontDesign(.serif)
//                
//                Divider()
//                    .padding(.horizontal)
//                
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(spacing: 30) {
//                        ForEach(park.photos, id: \.self) { photo in
//                            Image(photo)
//                                .resizable()
//                                .scaledToFit()
//                                .clipShape(RoundedRectangle(cornerRadius: 10))
//                                .frame(
//                                    width: expandedImage == photo ? UIScreen.main.bounds.width : 300,
//                                    height: expandedImage == photo ? UIScreen.main.bounds.height : 300
//                                )
//                                .onTapGesture {
//                                    if expandedImage == photo {
//                                        expandedImage = nil
//                                    } else {
//                                        expandedImage = photo
//                                    }
//                                }
//                        }
//                    }
//                }
//                
//                Divider()
//                    .padding(.horizontal)
//                    .padding(.bottom)
//                
//                HStack(alignment: .top) {
//                    Text("Rules:")
//                        .font(.headline)
//                    
//                    Spacer()
//                    
//                    VStack(alignment: .trailing) {
//                        HStack {
//                            Text("Leash Required:")
//                                .padding(.trailing)
//                            Image(systemName: park.rules.leashRequired ? "checkmark.circle.fill" : "circle.slash")
//                                .foregroundColor(park.rules.leashRequired ? .green : .red)
//                        }
//                        .padding(.horizontal)
//                        
//                        HStack {
//                            Text("Clean Up After:")
//                                .padding(.trailing)
//                            Image(systemName: park.rules.cleanupRequired ? "checkmark.circle.fill" : "circle.slash")
//                                .foregroundColor(park.rules.cleanupRequired ? .green : .red)
//                        }
//                        .padding(.horizontal)
//                    }
//                    
//                }
//                .fontDesign(.serif)
//                .padding(.horizontal)
//                
//                Divider()
//                    .padding()
//                
//                HStack(alignment: .top) {
//                    Text("Dog\nAmenities:")
//                        .font(.headline)
//                    
//                    Spacer()
//                    
//                    VStack(alignment: .trailing) {
//                        HStack {
//                            Text("Water Stations:")
//                                .padding(.trailing)
//                            Image(systemName: "drop.fill")
//                                .foregroundStyle(.blue)
//                            Image(systemName: park.dogAmenities.waterStations ? "checkmark.circle.fill" : "circle.slash")
//                                .foregroundColor(park.dogAmenities.waterStations ? .green : .red)
//                        }
//                        .padding(.horizontal)
//                        
//                        HStack {
//                            Text("Garbages in Area:")
//                                .padding(.trailing)
//                            Image(systemName: "trash.fill")
//                                .foregroundStyle(.gray)
//                            Image(systemName: park.dogAmenities.wasteStations ? "checkmark.circle.fill" : "circle.slash")
//                                .foregroundColor(park.dogAmenities.wasteStations ? .green : .red)
//                        }
//                        .padding(.horizontal)
//                        
//                        HStack {
//                            Text("Off-Leash Areas:")
//                                .padding(.trailing)
//                            Image(systemName: "dog.fill")
//                                .foregroundStyle(.brown)
//                            Image(systemName: park.dogAmenities.offLeashAreas ? "checkmark.circle.fill" : "circle.slash")
//                                .foregroundColor(park.dogAmenities.offLeashAreas ? .green : .red)
//                        }
//                        .padding(.horizontal)
//                    }
//                }
//                .fontDesign(.serif)
//                .padding(.horizontal)
//                
//                Divider()
//                    .padding()
//
//            }
//            .overlay(
//                // If an image is expanded, display the full-screen view
//                
//                ParkSheetPhotoOverlayView(expandedImage: $expandedImage)
//            )
//        }
//    }
//}
//
//
//#Preview {
//    Redesign(park: ParkModel.samplePark)
//}


import SwiftUI

struct Redesign: View {
    
    let park: ParkModel
    
    @State private var expandedImage: String? = nil
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack {
                // Park Name Header
                Text(park.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                    .padding(.horizontal)
                
                Divider()
                    .background(Color.white.opacity(0.5))
                    .padding(.horizontal)
                
                // Photo Gallery
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(park.photos, id: \.self) { photo in
                            Image(photo)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                .frame(
                                    width: expandedImage == photo ? UIScreen.main.bounds.width : 300,
                                    height: expandedImage == photo ? UIScreen.main.bounds.height : 200
                                )
                                .shadow(radius: 8)
                                .onTapGesture {
                                    withAnimation {
                                        expandedImage = (expandedImage == photo) ? nil : photo
                                    }
                                }
                        }
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                    .background(Color.white.opacity(0.5))
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                
                // Rules Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Rules:")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 10) {
                        RuleItem(label: "Leash Required", condition: park.rules.leashRequired)
                        RuleItem(label: "Clean Up After", condition: park.rules.cleanupRequired)
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                    .background(Color.white.opacity(0.5))
                    .padding(.vertical)
                
                // Dog Amenities Section
                VStack(alignment: .leading, spacing: 12) {
                    Text("Dog Amenities:")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    VStack(spacing: 10) {
                        AmenityItem(label: "Water Stations", icon: "drop.fill", condition: park.dogAmenities.waterStations)
                        AmenityItem(label: "Garbages in Area", icon: "trash.fill", condition: park.dogAmenities.wasteStations)
                        AmenityItem(label: "Off-Leash Areas", icon: "dog.fill", condition: park.dogAmenities.offLeashAreas)
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                    .background(Color.white.opacity(0.5))
                    .padding(.vertical)
                
            }
            .background(LinearGradient(
                gradient: Gradient(colors: [
                    Color.teal.opacity(0.5),
                    Color.teal.opacity(0.3)
                ]),
                startPoint: .top,
                endPoint: .bottom
            ))
            .cornerRadius(20)
            .padding(.horizontal)
            .overlay(
                // Full screen image overlay
                ParkSheetPhotoOverlayView(expandedImage: $expandedImage)
            )
        }
    }
}

struct RuleItem: View {
    let label: String
    let condition: Bool
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(.white)
                .font(.body)
            
            Spacer()
            
            Image(systemName: condition ? "checkmark.circle.fill" : "circle.slash")
                .foregroundColor(condition ? .green : .red)
        }
        .padding(.horizontal)
    }
}

struct AmenityItem: View {
    let label: String
    let icon: String
    let condition: Bool
    
    var body: some View {
        HStack {
            Text(label)
                .foregroundColor(.white)
                .font(.body)
            
            Spacer()
            
            Image(systemName: icon)
                .foregroundColor(.white)
            
            Image(systemName: condition ? "checkmark.circle.fill" : "circle.slash")
                .foregroundColor(condition ? .green : .red)
        }
        .padding(.horizontal)
    }
}

#Preview {
    Redesign(park: ParkModel.samplePark)
}

