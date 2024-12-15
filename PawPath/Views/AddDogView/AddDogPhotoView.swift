//
//  AddDogPhotoView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct AddDogPhotoView: View {
    var body: some View {
        
        VStack {
            Text("Upload Dog's Photo")
                .font(.headline)
            
            Button(action: {
                // Placeholder for future photo picker action
                print("Upload dog photo - functionality coming soon.")
            }) {
                Image(systemName: "camera.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 120, height: 120)
                    .background(Color.gray.opacity(0.4), in: Circle())
                    .shadow(radius: 10)
            }
        }
        .padding(.top, 20)
        
    }
}

#Preview {
    AddDogPhotoView()
}
