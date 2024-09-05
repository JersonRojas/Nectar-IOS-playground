//
//  ContentView.swift
//  Nectar Playground
//
//  Created by Jerson RojasOrtega on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    
    var backgroundColour: UIColor
    var foregroundColour: UIColor
    
    public init( backgroundColour: UIColor = .clear, foregroundColour: UIColor = .syrupPurpleBaseDynamic) {
        self.backgroundColour = backgroundColour
        self.foregroundColour = foregroundColour
    }
    
    var body: some View {
      
          
            NavigationView {
                TabView {
                    SwiftUIView()
                        .tabItem {
                            Text("Swift UI")
                            Divider()
                        }
                    UIKitView()
                        .tabItem {
                            Text("UIKit")
                                .font(.headline)
                            Divider()
                        }
                }
                .navigationBarTitleDisplayMode(.inline) // Center the title
                .background(Color.white.edgesIgnoringSafeArea(.all))
                .font(.title)
            }
        
       }
}

#Preview {
    ContentView()
}
