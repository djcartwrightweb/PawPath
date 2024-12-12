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
                .foregroundColor(.white)
            
            Stepper("Age: \(age) years", value: $age, in: 1...20)
                .font(.body)
                .padding()
                .background(Color.white.opacity(0.8))
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    AddDogAgeView(age: .constant(1))
}
