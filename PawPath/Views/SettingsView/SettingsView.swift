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
                    
                    Spacer()
                    Text("My Dogs:")
                    Divider()
                        .padding()
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<1) { index in
                                Circle()
                                    .frame(width: 100, height: 100)
                                    .foregroundStyle(Color.teal.opacity(0.7))
                                    .overlay {
                                        Circle()
                                            .frame(width: 90, height: 90)
                                            .foregroundStyle(Color.white)
                                            .overlay {
                                                Image(systemName: "dog.fill")
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                    .foregroundStyle(Color.brown)
                                            }
                                    }
                            }
                            Circle()
                                .frame(width: 100, height: 100)
                                .foregroundStyle(Color.teal.opacity(0.7))
                                .overlay {
                                    Circle()
                                        .frame(width: 90, height: 90)
                                        .foregroundStyle(Color.teal) //add new dog
                                        .overlay {
                                            Image(systemName: "plus")
                                                .foregroundStyle(Color.white)
                                        }
                                }
                        }
                    }.scrollIndicators(.hidden)
                    
                    
                    /*Section("Personal Details:") {
                     TextField("Please enter your name...", text: $settings.name)
                     .padding()
                     .background(Color.gray.opacity(0.2))
                     .clipShape(RoundedRectangle(cornerRadius: 10))
                     
                     TextField("Please enter your email...", text: $settings.name)
                     .keyboardType(.emailAddress)
                     .padding()
                     .background(Color.gray.opacity(0.2))
                     .clipShape(RoundedRectangle(cornerRadius: 10))
                     }
                     .padding(.horizontal)*/
                    
                    Divider()
                        .padding()
                    
                    Spacer()
                    
                    Section("Challenges:") {
                        Toggle(isOn: $settings.wantsChallenges) {
                            Text("Custom Challenges Active")
                                .font(.subheadline)
                        }
                        .tint(Color.teal.opacity(0.7))
                        .padding(.horizontal)
                    }
                    
                    Divider()
                        .padding()
                    
                    Section("Distance Tracking:") {
                        Picker("Distance Tracking", selection: $settings.selectedTracking) {
                            Text("gps").tag(TrackingMethod.gps)
                            Text("steps").tag(TrackingMethod.steps)
                            Text("off").tag(TrackingMethod.off)
                        }
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .padding()
                    
                    
                    
                    Section("Map:") {
                        Picker("Map Style", selection: $settings.selectedMapStyle) {
                            Text("standard").tag(MapStyle.standard)
                            Text("satellite").tag(MapStyle.satellite)
                            Text("hybrid").tag(MapStyle.hybrid)
                        }
                        .pickerStyle(.segmented)
                        .padding()
                        Picker("Unit of measurement", selection: $settings.selectedMeasurementUnit) {
                            Text("kms").tag(MeasurementUnit.kms)
                            Text("miles").tag(MeasurementUnit.miles)
                        }
                        .pickerStyle(.segmented)
                        .padding(.horizontal)
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .padding()
                    
                    Section("Notifications:") {
                        
                        Toggle(isOn: $settings.notifyNewTrailAdded) {
                            Text("New Trail Added")
                                .font(.subheadline)
                        }
                        .tint(Color.teal.opacity(0.7))
                        .padding(.horizontal)
                        
                        Toggle(isOn: $settings.notifyWeatherAlert) {
                            Text("Trail Weather Alerts")
                                .font(.subheadline)
                        }
                        .tint(Color.teal.opacity(0.7))
                        .padding(.horizontal)
                        
                        Toggle(isOn: $settings.notifyUpdates) {
                            Text("App Updates")
                                .font(.subheadline)
                        }
                        .tint(Color.teal.opacity(0.7))
                        .padding(.horizontal)
                        
                    }
                    .padding(.horizontal)
                    
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
