//
//  TrailsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct TrailsView: View {
    
    private var allTrails = TrailModel.allTrails
    
    var body: some View {
        
        /* Trails
         -SearchBar
         -Picker
         -ForeEach Loop / List or ScrollView
         -Separate view for each trail
         */
        
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.teal.opacity(0.5), // Starting darker teal
                        Color.teal.opacity(0.3)  // Lighter teal at the top
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                //need to stop ignoring the safe area when starting to scroll
                
                
                ScrollView {
                    ForEach(allTrails) { trail in
                        
                        NavigationLink {
                            TrailView(trail: trail)
                        } label: {
                            TrailsScrollView(trail: trail)
                        }
                        
                        
                        
                    }
                }
                .scrollIndicators(.hidden)
            }
            
        }
        //Color of the buttons used to navigate through the stack
        .tint(Color.teal)
    }
}

#Preview {
    TrailsView()
}
