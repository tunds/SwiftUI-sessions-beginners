//
//  ContentView.swift
//  LaunchScreenInSwiftUI
//
//  Created by Tunde Adegoroye on 17/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    
    var body: some View {
        
        VStack {
            
            Button("Tap Me!") {
                print("Hey I was tapped")
            }
            
            Text("Hello, world!")
                .padding()
                .onAppear {
                    
                    DispatchQueue
                        .main
                        .asyncAfter(deadline: .now() + 5) {
                            launchScreenManager.dismiss()
                        }
                    
                }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchScreenManager())
    }
}
