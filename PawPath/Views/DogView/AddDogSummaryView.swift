//
//  AddDogViewSummary.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct AddDogSummaryView: View {
    
    @Binding var dogName: String
    @Binding var dogSize: String
    @Binding var age: Int
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Your dog is a \(dogSize) breed, \(age) years old.")
                .font(.headline)
                .padding(.vertical)
        }
        .padding(.horizontal)
        
        Divider()
            .padding(.horizontal)
        
        // Submit Button
        Button {
            // Action on button press
            print("Adding dog: \(dogName), \(dogSize), Age: \(age)")
        } label: {
            Text("Save Dog")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.mint)
                .cornerRadius(10)
                .shadow(radius: 5)
        }
        .padding(.horizontal)
        .padding()
        
    }
}

#Preview {
    AddDogSummaryView(dogName: .constant(""), dogSize: .constant("Medium"), age: .constant(1))
}
