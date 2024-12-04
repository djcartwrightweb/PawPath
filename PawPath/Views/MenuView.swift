//
//  TrailsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-03.
//

import SwiftUI

struct MenuView: View {
    
    @State private var selection = 0
    
    init() {
//        UITabBar.appearance().barTintColor = UIColor.systemRed
        UITabBar.appearance().unselectedItemTintColor = UIColor.systemCyan
//        UITabBar.appearance().tintColor = UIColor.systemIndigo
    }
    
    var body: some View {
        
        
        TabView(selection: $selection) {
            
            Tab("Trails", systemImage: "leaf", value: 0) {
                TrailsView()
            }
            
            Tab("Parks", systemImage: "tree", value: 1) {
                ParksView()
            }
            
            Tab("Start / Map", systemImage: "mappin.and.ellipse", value: 2) {
                MapView()
            }
            
            Tab("Walks", systemImage: "figure.walk", value: 2) {
                WalksView()
            }
            .badge(1)
            
            Tab("Settings", systemImage: "pawprint", value: 4) {
                SettingsView()
                
            }
        }
        
    }
}

#Preview {
    MenuView()
}
