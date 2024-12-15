//
//  AddDogNameView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct AddDogNameView: View {
    
    @Binding var dogName: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Dog Name")
                .font(.headline)
            
            TextField("Enter dog's name", text: $dogName)
                .padding()
                .background(Color.white.opacity(0.6))
                .cornerRadius(10)
                .shadow(radius: 5)
                .font(.body)
                .autocapitalization(.words)
        }
        .padding(.horizontal)
        .padding(.top, 20)
        
    }
}

#Preview {
    AddDogNameView(dogName: .constant(""))
}
