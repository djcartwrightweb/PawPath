//
//  ParksView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct ParksView: View {
    var body: some View {
        
        
        /* Trails
         -SearchBar
         -Picker
         -Horizontal ScrollView
         -Dog-friendly features of each park as scrolling
         -separate view for each park
         */
        
        ZStack {
            Color.teal.opacity(0.2).ignoresSafeArea(edges: .top)
            
            ScrollView(.horizontal, showsIndicators: true) { // Horizontal scroll with indicators
                HStack(spacing: 20) { // Use HStack for horizontal layout
                    ForEach(1...10, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                            .overlay(
                                Text("\(index)")
                                    .foregroundColor(.white)
                                    .bold()
                            )
                    }
                }
                .padding()
            }
        }
        
        
    }
}

#Preview {
    ParksView()
}
