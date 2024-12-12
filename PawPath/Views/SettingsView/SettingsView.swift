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

 */


import SwiftUI

struct SettingsView: View {
    
    @Environment(SettingsViewModel.self) var settingsViewModel
    private var settingsKey: String = "paw_path_settings"

    var body: some View {

        //Required to pass settings vm throughout child views
        @Bindable var vm = settingsViewModel
        
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
                
                
                ScrollView {
                    VStack(alignment: .leading) {
                        
                        
                        SettingsDogsView()
                        
                        Divider()
                            .padding()
                        
                        Spacer()
                        
                        SettingsChallengesView(settings: $vm.mySettings)
                        
                        Divider()
                            .padding()
                        
                        SettingsTrackingView(settings: $vm.mySettings)
                        
                        Divider()
                            .padding()
                        
                        
                        
                        SettingsMapView(settings: $vm.mySettings)
                        
                        Divider()
                            .padding()
                        
                        SettingsNotificationsView(settings: $vm.mySettings)
                        
                        Divider()
                            .padding()
                        
                        Spacer()
                        
                    }
                    .padding()
                }
                
            }
            .onAppear {
                vm.getSettings()
                print("on appear working")
            }
            .onChange(of: vm.mySettings) { _, value in
                vm.saveSettings()
            }
        }
    }
    
    
}



#Preview {
    SettingsView()
        .environment(SettingsViewModel())
}
