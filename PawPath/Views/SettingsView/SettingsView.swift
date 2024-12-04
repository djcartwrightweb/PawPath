//
//  SettingsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        /*Dogs (separate view)
         -inside a form
            name -> TextField
            breed -> Picker
            weight -> Slider?
            DOB -> DatePicer
            imageUpload?

         Goals (separate view)
            -
         
         -Notifications on / off
         -Metric vs. Imperial (kms vs miles)
        */
        
        ZStack {
            Color.teal.opacity(0.2).ignoresSafeArea(edges: .top)
            
            
            //Units of measure (toggle or picker)
            //Map Style (picker or segmented control)
            //Notifications
                //New trails added
                //Updates
                //Weather alerts for favourited trail
            //Account Settings
                //profile pictures
                //name
                //email
            //Activity tracking on / off
            
            Text("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
