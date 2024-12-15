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
                BackgroundView()
                
                
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
                        
                        
                        //this needs to stand out more so user can see it
                        NavigationLink {
                            
                        } label: {
                            
                            HStack {
                                Text("Permissions:")
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.mint)
                                    .font(.headline)
                                    .padding(.trailing)
                                
                            }
                            .padding(.horizontal)
                        }
                        
                        
                        
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
