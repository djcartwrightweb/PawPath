//
//  TrailsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct TrailsView: View {
    var body: some View {
        
        /* Trails
         -SearchBar
         -Picker
         -ForeEach Loop / List or ScrollView
         -Separate view for each trail
         */
        
        NavigationStack {
            ZStack {
                Color.teal.opacity(0.2).ignoresSafeArea()
                //need to stop ignoring the safe area when starting to scroll
                
                
                ScrollView {
                    ForEach(DataServicesManager.sampleTrails) { trail in
                        
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
