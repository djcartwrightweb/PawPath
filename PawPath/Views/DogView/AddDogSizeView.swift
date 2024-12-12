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
            
            Picker("Select size", selection: $dogSize) {
                ForEach(sizeOptions, id: \.self) { size in
                    Text(size)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.vertical)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}

//#Preview {
//    AddDogSizeView()
//}
