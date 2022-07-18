//
//  ContentView.swift
//  Form-For-Notification-Settings-SwiftUI
//
//  Created by Mitya Kim on 7/17/22.
//

import SwiftUI

struct ContentView: View {
    
    let images = ["🎆","🗾","🏤","🏦","🏞","🌅","🌇","🏙","🌌","🏢"]
    
    var body: some View {
            
       
        NavigationView {
            
            Form {
                
                Section {
                    HStack {
                        
                        Text("Show Previews")
                        Spacer()
                        NavigationLink {
                            
                        } label: {
                            Text("Always").foregroundColor(.gray)
                        }.fixedSize()
                    }
                } header: {
                    Text("")
                }

                Section {
                    NavigationLink {
                        
                    } label: {
                        Text("Siri Suggestions")
                    }
                } header: {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                }
                
                Section {
                    ForEach(images, id: \.self) { image in
                        
                        HStack {
                            
                            Text(image)
                                .font(.largeTitle)
                            Text("Notification")
                        }
                    }
                } header: {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                    Text("Notification Style")
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
