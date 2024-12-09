//
//  AddDogView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-09.
//

import SwiftUI

struct AddDogView: View {
    
    @State var dogName: String = ""
    
    @State private var age = 1
    
    
    var body: some View {
        //Name
        //Breed -
        //Age - stepper - / +
        //Size (small, medium, large) - picker
        //Weight
        
        NavigationStack { //This is here for the picker
            
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
                        .fontWeight(.light)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.secondary.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(radius: 5)
                        .padding(.horizontal)
              
                    
                    
                    //AddDogBreedView() // separate view for breed?
                    
                    Divider()
                        .padding()
                    
                    Text("Dog Size:")
                        .fontDesign(.serif)
                        .font(.headline)
                        .fontWeight(.light)
                        .padding(.bottom)
                    
                    AddDogSizeView()
                    
                    Divider()
                        .padding()
                    
                    
                    Stepper("Current age in years:", onIncrement: {
                        age += 1
                    }, onDecrement: {
                        age -= 1
                    })
                    .fontDesign(.serif)
                    .font(.headline)
                    .fontWeight(.light)
                    
                    Divider()
                        .padding()
                    
                    Text("Summary:")
                    
                    Text("Lady is a Small breed dog who is current 7 years of age. She weights approximately: 77lbs")
                        .fontDesign(.serif)
                        .font(.headline)
                        .fontWeight(.light)
                        .padding()
    
                    Button {
                        print("test")
                    } label: {
                        Text("test")
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    
                }
                
                
            } .toolbar(.hidden, for: .tabBar)
            
        }
    }
}

#Preview {
    AddDogView()
}
