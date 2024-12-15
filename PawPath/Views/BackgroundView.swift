//
//  BackgroundView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-15.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        
        LinearGradient(
            gradient: Gradient(colors: [
                Color.teal.opacity(0.5), // Starting darker teal
                Color.teal.opacity(0.2)  // Lighter teal at the top
            ]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea(edges: .top)
        
    }
}

#Preview {
    BackgroundView()
}
