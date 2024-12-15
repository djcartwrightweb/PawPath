//
//  PermissionsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-15.
//

import SwiftUI

struct PermissionsView: View {
    
    @State var cameraEnabled: Bool = false
    @State var locationEnabled: Bool = false
    @State var notificationsEnabled: Bool = false
    
    var body: some View {

        ZStack {
            BackgroundView()
            
            VStack {
                
                Text("Header to go here")
                    .font(.headline)
                    .padding(.bottom, 10)
                
                Text("Please note that these permissions can be disabled at any point during use of this app")
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .padding(.horizontal, 30)
                    .padding(.bottom)
                
                Divider()
                    .padding()
                
                Button {
                    cameraEnabled.toggle()
                } label: {
                    HStack {
                        Image(systemName: cameraEnabled ? "checkmark" : "camera")
                            .padding(.leading)
                        Spacer()
                        Text("Enable Camera")
                        Spacer()
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(cameraEnabled ? .white : .mint)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(cameraEnabled ? .mint : .white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .padding()

                Button {
                    notificationsEnabled.toggle()
                } label: {
                    HStack {
                        Image(systemName: notificationsEnabled ? "checkmark" : "bell")
                            .padding(.leading)
                        Spacer()
                        Text("Enable Notifications")
                        Spacer()
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(notificationsEnabled ? .white : .mint)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(notificationsEnabled ? .mint : .white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .padding()
                
                Button {
                    locationEnabled.toggle()
                } label: {
                    HStack {
                        Image(systemName: locationEnabled ? "checkmark" : "location")
                            .padding(.leading)
                        Spacer()
                        Text("Enable Location Servies")
                        Spacer()
                    }
                    .fontWeight(.semibold)
                    .foregroundColor(locationEnabled ? .white : .mint)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(locationEnabled ? .mint : .white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .padding()
                
                Divider()
                    .padding()
                
                Text("This is the part of the app where I talk about privacy and how it could potentially impact the user")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                    .padding(.top)
                
            }
        }
        
    }
}

#Preview {
    PermissionsView()
}
