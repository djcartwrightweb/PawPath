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
    @State private var dogSize: String = "Medium" // Add a state for dog size
    
    let sizeOptions = ["Small", "Medium", "Large"]
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                
                VStack {
                    // Title/Header
                    Text("Add a New Dog")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                                        
                    // Dog Photo Upload Section (UI only, no functionality yet)
                    AddDogPhotoView()
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Dog Name Field
                    AddDogNameView(dogName: $dogName)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Dog Size Picker
                    AddDogSizeView(dogSize: $dogSize, sizeOptions: sizeOptions)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Dog Age Stepper
                    AddDogAgeView(dogAge: $age)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Summary Section
                    AddDogSummaryView(dogName: $dogName, dogSize: $dogSize, dogAge: $age)
                }

            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    AddDogView()
}
