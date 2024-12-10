//
//  ParksSheetView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-10.
//

import SwiftUI

struct ParkSheetView: View {
    
    let selectedPark: ParkModel
    
    var body: some View {
        Text(selectedPark.name)
    }
}

#Preview {
    ParkSheetView(selectedPark: ParkModel.samplePark)
}
