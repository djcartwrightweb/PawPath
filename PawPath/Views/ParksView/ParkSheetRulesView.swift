//
//  ParkSheetRulesView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct ParkSheetRulesView: View {
    
    let park: ParkModel
    
    var body: some View {
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
    }
}

#Preview {
    ParkSheetRulesView(park: ParkModel.samplePark)
}
