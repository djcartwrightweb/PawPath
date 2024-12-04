//
//  TrailWalksDataView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct TrailWalksDataView: View {
    var body: some View {
        HStack {
            
            Text("Oct 1")
                .padding(.horizontal)
            Spacer()
            
            Text("12:31")
            
            Image(systemName: "clock.fill")
                .padding(.trailing)
            
            Text("601 Kcal")
            Image(systemName: "figure.walk")
                .padding(.trailing)
            
        }
        .padding(.trailing)
        .font(.subheadline)
        .fontWeight(.semibold)
    }
}

#Preview {
    TrailWalksDataView()
}
