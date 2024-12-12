//
//  AddDogSizeView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct AddDogSizeView: View {
    
    @Binding var dogSize: String
    let sizeOptions: [String]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Dog Size")
                .font(.headline)
                .foregroundColor(.white)
            
            Picker("Select size", selection: $dogSize) {
                ForEach(sizeOptions, id: \.self) { size in
                    Text(size)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.vertical)
            .background(Color.white.opacity(0.8))
            .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}

//#Preview {
//    AddDogSizeView()
//}
