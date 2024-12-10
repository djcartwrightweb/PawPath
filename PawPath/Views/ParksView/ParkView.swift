//
//  ParkView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-10.
//

import SwiftUI

struct ParkView: View {
    
    let park: ParkModel
    
    var body: some View {
        
        Text(park.name)
    }
}

#Preview {
    ParkView(park: ParkModel.samplePark)
}
