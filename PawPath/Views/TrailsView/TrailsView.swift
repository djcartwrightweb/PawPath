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
        
        ScrollView {
            ForEach(DataServicesManager.sampleTrails) { trail in
                
            }
        }
    }
}

#Preview {
    TrailsView()
}
