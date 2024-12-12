//
//  ParkSheetAmenitiesView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct ParkSheetAmenitiesView: View {
    
    let park: ParkModel
    
    var body: some View {
        
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
        
    }
}

#Preview {
    ParkSheetAmenitiesView(park: ParkModel.samplePark)
}
