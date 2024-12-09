//
//  TrailView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct TrailView: View {
    
    // The trail that this view will display information about
    let trail: TrailModel
    
    // Drag variables
    @State var currentOffset: CGFloat = 0
    @State var startingOffset: CGFloat = UIScreen.main.bounds.height * 0.8
    @State var endingOffset: CGFloat = 0
    
    var dragUp: some Gesture {
        DragGesture()
            .onChanged { value in
                withAnimation(.spring) {
                    currentOffset = value.translation.height
                }
            }
            .onEnded { value in
                // Example logic: Snap back to starting position or snap fully up
                withAnimation(.spring) {
                    if currentOffset < -UIScreen.main.bounds.height * 0.35 {
                        currentOffset = -startingOffset
                    } else {
                        currentOffset = 0
                    }
                }
            }
    }
    
    var body: some View {
        ZStack {
            // Background color
            Color.teal.opacity(0.2).ignoresSafeArea()
            
            // Content behind the drag-up view
            TrailDetailsView(trail: trail)
            
            // Drag-up view
            TrailWalksView()
                .background(Color.white) //don't need this but for opacities in color scheme I believe
                .offset(y: startingOffset + currentOffset)
                .gesture(dragUp)
                .zIndex(1) // Ensure this view is on top
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    TrailView(trail: TrailModel.sampleTrail)
}

//#Preview {
//    TrailView(trail: TrailModel(name: "Sarnia"))
//}
