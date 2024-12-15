//
//  AddDogViewSummary.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI
import SwiftData

struct AddDogSummaryView: View {
    
    @Environment(\.modelContext) private var dogContext
    
    @Binding var dogName: String
    @Binding var dogSize: String
    @Binding var dogAge: Int
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Your dog \(dogName) is a \(dogSize) breed, \(dogAge) years old.")
                .font(.headline)
                .padding(.vertical)
        }
        .padding(.horizontal)
        
        Divider()
            .padding(.horizontal)
        
        // Submit Button
        Button {
            
            
            // Create a new dog from the data provided and insert it into SwiftData storage
            // Do some checks for invalid input (e.g. name is blank)
            let newDog = DogModel(name: dogName, size: dogSize, age: dogAge)
            dogContext.insert(newDog)
            
            print("Adding dog named: \(dogName.lowercased()), \(dogSize.lowercased())-sized,\nAge: \(dogAge)")
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
    AddDogSummaryView(dogName: .constant("Lady"), dogSize: .constant("Medium"), dogAge: .constant(1))
}
