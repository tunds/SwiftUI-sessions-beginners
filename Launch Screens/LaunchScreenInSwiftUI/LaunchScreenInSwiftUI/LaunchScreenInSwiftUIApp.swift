//
//  LaunchScreenInSwiftUIApp.swift
//  LaunchScreenInSwiftUI
//
//  Created by Tunde Adegoroye on 17/03/2022.
//

import SwiftUI

@main
struct LaunchScreenInSwiftUIApp: App {
    
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            
            ZStack {
                
                ContentView()
                
                if launchScreenManager.state != .completed {
                    LaunchScreenView()
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
