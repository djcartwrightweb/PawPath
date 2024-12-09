//
//  AddDogSizeView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-09.
//

import SwiftUI

struct AddDogSizeView: View {
    
    @State var dogSize: String = "Large"
    let dogSizes = ["Large", "Medium", "Small", "Tiny"]
    
    
    var body: some View {
        
        
        
        Picker("Dog size", selection: $dogSize) {
            ForEach(dogSizes, id: \.self) {
                Text($0)
                    .fontDesign(.serif)
                    .font(.headline)
            }
        }
        .pickerStyle(.segmented)
        .padding(.horizontal)
        
        
        
    }
    
    
}

#Preview {
    AddDogSizeView()
}
