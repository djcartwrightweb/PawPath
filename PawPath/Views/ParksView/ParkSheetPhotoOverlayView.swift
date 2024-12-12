//
//  ParkSheetPhotoOverlayView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-12.
//

import SwiftUI

struct ParkSheetPhotoOverlayView: View {
    
    @Binding var expandedImage: String?
    
    var body: some View {
        
        
        Group {
            if let expandedImage = expandedImage {
                Color.black  // Dim background
                    .edgesIgnoringSafeArea(.all)  // Cover the entire screen
                
                Image(expandedImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .onTapGesture {
                        // Close the enlarged image when tapped
                        self.expandedImage = nil
                    }
                    .zIndex(1)  // Make sure it appears above other views
            }
        }
        
    }
}

#Preview {
    ParkSheetPhotoOverlayView(expandedImage: .constant(nil))
}
