//
//  ParksView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI



struct ParksView: View {
    
    private var allParks = ParkModel.allParks
    
    @State var selectedPark: ParkModel? = nil
    
    var body: some View {
        
        
        /* Parks
         
         
         
         -Dog-friendly features of each park as scrolling
         -separate view for each park as a sheet
         */
        
        ZStack {
            Color.teal.opacity(0.2).ignoresSafeArea(edges: .top)
             
            ScrollView(.horizontal, showsIndicators: true) { // Horizontal scroll with indicators
                HStack(spacing: 20) { // Use HStack for horizontal layout
                    ForEach(allParks) { park in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 200, height: 300)
                            .overlay(
                                Text("\(park.name)")
                                    .foregroundColor(.white)
                                    .bold()
                            )
                            .onTapGesture {
                                selectedPark = park
                            }
                    }
                }
                .sheet(item: $selectedPark, content: { park in
                    ParkSheetView(park: park)
                })
                .padding()
            }
        }
        
        
    }
}

#Preview {
    ParksView()
}


