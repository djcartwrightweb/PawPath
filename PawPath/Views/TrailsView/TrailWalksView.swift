//
//  TrailDragUpView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct TrailWalksView: View {
    var body: some View {
        ZStack {
            Color.teal.opacity(0.3).ignoresSafeArea()
            
            VStack {
                
                //animate this with dragrotation if possible
                Image(systemName: "chevron.up")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                
                List {
                    
                    Section("June") {
                        ForEach(0..<2) { index in
                            TrailWalksDataView()
                                .listRowBackground(Color.teal.opacity(0.2))
                        }
                    }
                    
                    Section("May") {
                        ForEach(0..<7) { index in
                            TrailWalksDataView()
                                .listRowBackground(Color.teal.opacity(0.2))
                        }
                    }
                    
                    Section("April") {
                        ForEach(0..<3) { index in
                            TrailWalksDataView()
                                .listRowBackground(Color.teal.opacity(0.2))
                        }
                    }
                    
                }.listStyle(.plain)
                
            }
        }
        
        
    }
}

#Preview {
    TrailWalksView()
}


