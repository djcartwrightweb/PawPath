//
//  SettingsDogsView.swift
//  PawPath
//
//  Created by David Cartwright on 2024-12-05.
//

import SwiftUI

struct SettingsDogsView: View {
    var body: some View {
        
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
        
    }
}

#Preview {
    SettingsDogsView()
}
