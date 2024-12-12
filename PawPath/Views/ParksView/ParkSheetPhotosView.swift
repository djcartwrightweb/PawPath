//
//  ParkSheetPhotosView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct ParkSheetPhotosView: View {
    
    let park: ParkModel
    @Binding var expandedImage: String?
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(park.photos, id: \.self) { photo in
                    Image(photo)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .frame(
                            width: expandedImage == photo ? UIScreen.main.bounds.width : 300,
                            height: expandedImage == photo ? UIScreen.main.bounds.height : 300
                        )
                        .onTapGesture {
                            if expandedImage == photo {
                                expandedImage = nil
                            } else {
                                expandedImage = photo
                            }
                        }
                }
            }
        }
        
    }
}

#Preview {
    ParkSheetPhotosView(park: ParkModel.samplePark, expandedImage: .constant(nil))
}
