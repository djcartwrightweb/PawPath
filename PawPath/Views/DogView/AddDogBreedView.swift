//
//  AddDogBreedView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-09.
//

import SwiftUI

struct AddDogBreedView: View {
    
    @State var dogBreed: String = "Affenpinscher"
    let dogBreeds = ["Affenpinscher", "Afghan Hound", "Airedale Terrier"]
    
    
    var body: some View {
        
        
        
        Picker("Dog Breed", selection: $dogBreed) {
            ForEach(dogBreeds, id: \.self) {
                Text($0)
                    .fontDesign(.serif)
                    .font(.headline)
            }
        }
        .pickerStyle(.wheel)
        .padding(.horizontal)
        
        
        
    }
    
    
}




#Preview {
    AddDogBreedView()
}
