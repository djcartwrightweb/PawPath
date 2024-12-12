//
//  ChallengesView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct WalksView: View {
    var body: some View {
        
        /*Activity tracking
         
         */
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.teal.opacity(0.5), // Starting darker teal
                    Color.teal.opacity(0.3)  // Lighter teal at the top
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            
            Text("Walks")
        }
    }
}

#Preview {
    WalksView()
}
