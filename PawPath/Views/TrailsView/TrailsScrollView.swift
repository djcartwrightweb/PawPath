//
//  TrailsScrollView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct TrailsScrollView: View {
    
    let trail: TrailModel
    
    var body: some View {
            
        VStack {
            HStack {
                Image(systemName: "leaf.fill")
                    .font(.title)
                    .foregroundStyle(Color.mint)
                
                Text(trail.name.capitalized)
                    .fontDesign(.serif)
                    .foregroundStyle(Color.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                Spacer()
                
                
                //which dogs and or people you've trailed with
//                Image(systemName: "dog.fill")
//                    .font(.caption)
//                    .foregroundStyle(Color.brown)
//                Image(systemName: "person.fill")
            }
            .padding()
            
            Spacer()
            
            Text(trail.description)
                .fontDesign(.serif)
                .foregroundStyle(Color.white)
                .font(.subheadline)
                .fontWeight(.medium)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(Color.teal.opacity(0.7))
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(Color.teal.opacity(0.7))
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(Color.teal.opacity(0.7))
                
                
            }
            .padding()
        }
        .frame(
            width: UIScreen.main.bounds.width * 0.75,
            height: 250
        )
        .background(Color.teal)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
        .padding()
        
        
    }
}

#Preview {
    MenuView()
}
