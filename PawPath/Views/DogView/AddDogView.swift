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
                    // Title/Header
                    Text("Add a New Dog")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 40)
                        .foregroundColor(.white)
                                        
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
                    AddDogAgeView(age: $age)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Summary Section
                    AddDogSummaryView(dogName: $dogName, dogSize: $dogSize, age: $age)
                }
                .background(LinearGradient(
                    gradient: Gradient(colors: [
                        Color.teal.opacity(0.5),
                        Color.teal.opacity(0.3)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                ))
                .cornerRadius(20)
                .padding(.horizontal)
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    AddDogView()
}
