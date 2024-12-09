//
//  AddDogView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-09.
//

import SwiftUI

struct AddDogView: View {
    
    
    @State var dogName: String = ""
    @State var dogBreed: String = "Affenpinscher"
    
    var body: some View {
        //Name
        //Breed -
        //Age - stepper - / +
        //Size (small, medium, large) - picker
        //Weight
        
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.teal.opacity(0.5), // Starting darker teal
                    Color.teal.opacity(0.3)  // Lighter teal at the top
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .top)
            
            
            VStack {
                
                
                TextField("Type name here...", text: $dogName)
                    .fontDesign(.serif)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.secondary.opacity(0.3))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 5)
                    .padding(.horizontal)
                
                Divider()
                    .padding(.horizontal)
                
                Picker("Distance Tracking", selection: $dogBreed) {
                    Text("Affenpinscher")
                    Text("Afghan Hound")
                    Text("Airedale Terrier")
                }
                .pickerStyle(.wheel)
                .padding(.horizontal)
                
            }
            
            
        } .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    AddDogView()
}
