////
////  AddDogView.swift
////  PawPath
////
////  Created by David Cartwright on 2024-12-09.
////
//
//import SwiftUI
//
//struct AddDogView: View {
//    
//    @State var dogName: String = ""
//    
//    @State private var age = 1
//    
//    
//    var body: some View {
//        //Name
//        //Breed -
//        //Age - stepper - / +
//        //Size (small, medium, large) - picker
//        //Weight
//        
//        NavigationStack { //This is here for the picker
//            
//            ZStack {
//                LinearGradient(
//                    gradient: Gradient(colors: [
//                        Color.teal.opacity(0.5), // Starting darker teal
//                        Color.teal.opacity(0.3)  // Lighter teal at the top
//                    ]),
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
//                .ignoresSafeArea(edges: .top)
//                
//                
//                VStack {
//                    
//                    
//                    TextField("Type name here...", text: $dogName)
//                        .fontDesign(.serif)
//                        .font(.headline)
//                        .fontWeight(.light)
//                        .padding()
//                        .frame(maxWidth: .infinity)
//                        .background(Color.secondary.opacity(0.2))
//                        .clipShape(RoundedRectangle(cornerRadius: 10))
//                        .shadow(radius: 5)
//                        .padding(.horizontal)
//              
//                    
//                    
//                    //AddDogBreedView() // separate view for breed?
//                    
//                    Divider()
//                        .padding()
//                    
//                    Text("Dog Size:")
//                        .fontDesign(.serif)
//                        .font(.headline)
//                        .fontWeight(.light)
//                        .padding(.bottom)
//                    
//                    AddDogSizeView()
//                    
//                    Divider()
//                        .padding()
//                    
//                    
//                    Stepper("Current age in years:", onIncrement: {
//                        age += 1
//                    }, onDecrement: {
//                        age -= 1
//                    })
//                    .fontDesign(.serif)
//                    .font(.headline)
//                    .fontWeight(.light)
//                    
//                    Divider()
//                        .padding()
//                    
//                    Text("Summary:")
//                    
//                    Text("Lady is a Small breed dog who is current 7 years of age. She weights approximately: 77lbs")
//                        .fontDesign(.serif)
//                        .font(.headline)
//                        .fontWeight(.light)
//                        .padding()
//    
//                    Button {
//                        print("test")
//                    } label: {
//                        Text("test")
//                    }
//                    .padding()
//                    .buttonStyle(.borderedProminent)
//                    
//                }
//                
//                
//            } .toolbar(.hidden, for: .tabBar)
//            
//        }
//    }
//}
//
//#Preview {
//    AddDogView()
//}

//
//  AddDogView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-09.
//

//import SwiftUI
//
//struct AddDogView: View {
//    
//    @State var dogName: String = ""
//    @State private var age = 1
//    @State private var dogSize: String = "Medium" // Add a state for dog size
//    
//    let sizeOptions = ["Small", "Medium", "Large"]
//    
//    var body: some View {
//        NavigationStack { // This is here for the picker
//            
//            ZStack {
//                LinearGradient(
//                    gradient: Gradient(colors: [
//                        Color.teal.opacity(0.5), // Starting darker teal
//                        Color.teal.opacity(0.3)  // Lighter teal at the top
//                    ]),
//                    startPoint: .top,
//                    endPoint: .bottom
//                )
//                .ignoresSafeArea(edges: .top)
//                
//                VStack {
//                    // Title/Header
//                    Text("Add a New Dog")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .padding(.top, 40)
//                        .foregroundColor(.white)
//                    
//                    // Dog Name Field
//                    VStack(alignment: .leading) {
//                        Text("Dog Name")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                        
//                        TextField("Enter dog's name", text: $dogName)
//                            .padding()
//                            .background(Color.white.opacity(0.8))
//                            .cornerRadius(10)
//                            .shadow(radius: 5)
//                            .font(.body)
//                            .autocapitalization(.words)
//                    }
//                    .padding(.horizontal)
//                    .padding(.top, 20)
//                    
//                    Divider()
//                        .padding(.horizontal)
//                    
//                    // Dog Size Picker
//                    VStack(alignment: .leading) {
//                        Text("Dog Size")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                        
//                        Picker("Select size", selection: $dogSize) {
//                            ForEach(sizeOptions, id: \.self) { size in
//                                Text(size)
//                            }
//                        }
//                        .pickerStyle(SegmentedPickerStyle())
//                        .padding(.vertical)
//                        .background(Color.white.opacity(0.8))
//                        .cornerRadius(10)
//                    }
//                    .padding(.horizontal)
//                    
//                    Divider()
//                        .padding(.horizontal)
//                    
//                    // Dog Age Stepper
//                    VStack(alignment: .leading) {
//                        Text("Dog Age")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                        
//                        Stepper("Age: \(age) years", value: $age, in: 1...20)
//                            .font(.body)
//                            .padding(.vertical)
//                            .background(Color.white.opacity(0.8))
//                            .cornerRadius(10)
//                    }
//                    .padding(.horizontal)
//                    
//                    Divider()
//                        .padding(.horizontal)
//                    
//                    // Summary Section
//                    VStack(alignment: .leading) {
//                        Text("Summary")
//                            .font(.headline)
//                            .foregroundColor(.white)
//                        
//                        Text("Your dog is a \(dogSize) breed, \(age) years old.")
//                            .font(.body)
//                            .foregroundColor(.white)
//                            .padding(.vertical)
//                    }
//                    .padding(.horizontal)
//                    
//                    Divider()
//                        .padding(.horizontal)
//                    
//                    // Submit Button
//                    Button {
//                        // Action on button press
//                        print("Adding dog: \(dogName), \(dogSize), Age: \(age)")
//                    } label: {
//                        Text("Save Dog")
//                            .fontWeight(.semibold)
//                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity)
//                            .padding()
//                            .background(Color.green)
//                            .cornerRadius(10)
//                            .shadow(radius: 5)
//                    }
//                    .padding(.horizontal)
//                    .padding(.top, 20)
//                }
//                .background(LinearGradient(
//                    gradient: Gradient(colors: [
//                        Color.teal.opacity(0.5), // Starting darker teal
//                        Color.teal.opacity(0.3)  // Lighter teal at the top
//                    ]),
//                    startPoint: .top,
//                    endPoint: .bottom
//                ))
//                .cornerRadius(20)
//                .padding(.horizontal)
//            }
//        }
//        .navigationTitle("Add Dog")
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar(.hidden, for: .tabBar)
//    }
//}
//
//#Preview {
//    AddDogView()
//}
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
                    VStack {
                        Text("Upload Dog's Photo")
                            .font(.headline)
                            .foregroundColor(.white)
                        
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
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Dog Name Field
                    VStack(alignment: .leading) {
                        Text("Dog Name")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        TextField("Enter dog's name", text: $dogName)
                            .padding()
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .font(.body)
                            .autocapitalization(.words)
                    }
                    .padding(.horizontal)
                    .padding(.top, 20)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Dog Size Picker
                    VStack(alignment: .leading) {
                        Text("Dog Size")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Picker("Select size", selection: $dogSize) {
                            ForEach(sizeOptions, id: \.self) { size in
                                Text(size)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.vertical)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Dog Age Stepper
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
                    
                    Divider()
                        .padding(.horizontal)
                    
                    // Summary Section
                    VStack(alignment: .leading) {
                        
                        Text("Your dog is a \(dogSize) breed, \(age) years old.")
                            .font(.headline)
                            .foregroundColor(.white)
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
