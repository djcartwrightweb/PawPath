//
//  SettingsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-04.
//

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


//Units of measure (toggle or picker)            DONE
//Map Style (picker or segmented control)        DONE
//Notifications
//New trails added
//Updates
//Weather alerts for favourited trail
//Account Settings
//profile pictures
//name
//email
//Activity tracking on / off


import SwiftUI

struct SettingsView: View {

    @State var settings = SettingsModel()

    var body: some View {
        
        
        
        ZStack {
            Color.teal.opacity(0.2).ignoresSafeArea(edges: .top)
        
            
            ScrollView {
                VStack(alignment: .leading) {
                    
                    
                    SettingsDogsView()
                    
                    Divider()
                        .padding()
                    
                    Spacer()
                    
                    SettingsChallengesView(settings: $settings)
                    
                    Divider()
                        .padding()
                    
                    SettingsTrackingView(settings: $settings)
                    
                    Divider()
                        .padding()
                    
                    
                    
                    SettingsMapView(settings: $settings)
                    
                    Divider()
                        .padding()
                    
                    SettingsNotificationsView(settings: $settings)
                    
                    Divider()
                        .padding()
                    
                    Spacer()
                    
                }
                .padding()
            }
            
            
        }
    }
}



#Preview {
    SettingsView()
}
