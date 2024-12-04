//
//  TrailsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-03.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        TabView {
            Tab("Trails", systemImage: "leaf") {
                Text("test")
            }
            
            Tab("Parks", systemImage: "tree") {
                Text("test")
            }
            
            Tab("Map", systemImage: "mappin.and.ellipse") {
                Text("test")
            }
            
            Tab("Challenges", systemImage: "trophy") {
                Text("test")
            }
            
            Tab("Settings", systemImage: "gear") {
                Text("test")
                
            }
        }
    }
}

#Preview {
    MenuView()
}
