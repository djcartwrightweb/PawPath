//
//  AddDogAgeView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct AddDogAgeView: View {
    
    @Binding var age: Int
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Dog Age")
                .font(.headline)
            
            Stepper("Age: \(age) years", value: $age, in: 1...20)
                .font(.body)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    AddDogAgeView(age: .constant(1))
}
