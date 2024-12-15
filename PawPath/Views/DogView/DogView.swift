//
//  DogView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-15.
//

import SwiftUI

struct DogView: View {
    
    let dog: DogModel
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            //Show dog's picture with name above:
            
            VStack {
                
                Text(dog.name.uppercased())
                    .font(.title2)
                    .fontDesign(.serif)
                
                //temporary image
                Image(systemName: "dog.fill")
                    .font(.largeTitle)
                    .foregroundColor(.brown)
                    .frame(width: 300, height: 300)
                    .background(Color.gray.opacity(0.3), in: Circle())
                    .shadow(radius: 10)
                
                Divider()
                    .padding()
                
                
                VStack(alignment: .leading, spacing: 20) {
                    // Dog's Information Section
                    HStack {
                        Text("\(dog.name.capitalized)'s Information:")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Breed Size:")
                            Spacer()
                            Text("\(dog.size)")
                                .padding(.trailing)
                        }
                        HStack {
                            Text("Age:")
                            Spacer()
                            Text("\(dog.age)")
                                .padding(.trailing)
                        }
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .padding(.vertical)
                    
                    // Dog's Activity Section
                    HStack {
                        Text("\(dog.name.capitalized)'s Activity:")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Text("Trails:")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.title3)
                                .padding(.trailing)
                        }
                        HStack {
                            Text("Dog Parks:")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.title3)
                                .padding(.trailing)
                        }
                        HStack {
                            Text("Walks:")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.title3)
                                .padding(.trailing)
                        }
                    }
                    .padding(.horizontal)
                }

                Divider()
                    .padding()
                
                HStack {
                    Button {
                        //delete button
                    } label: {
                        HStack {
                            Image(systemName: "location")
                                .padding(.leading)
                            Spacer()
                            Text("Delete Dog")
                            Spacer()
                        }
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.red.opacity(0.9))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                    .padding(.leading)
                    
                    Button {
                        //delete button
                    } label: {
                        HStack {
                            Image(systemName: "location")
                                .padding(.leading)
                            Spacer()
                            Text("Edit Dog")
                            Spacer()
                        }
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.red.opacity(0.9))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    }
                    .padding(.trailing)
                }
                
                Spacer()
                
                
                
            }
            
        }
        
            
    }
}

#Preview {
    DogView(dog: DogModel(name: "Lady", size: "small", age: 2))
}
