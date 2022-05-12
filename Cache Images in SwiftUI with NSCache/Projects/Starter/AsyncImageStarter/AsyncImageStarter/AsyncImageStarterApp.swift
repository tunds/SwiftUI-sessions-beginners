//
//  AsyncImageStarterApp.swift
//  AsyncImageStarter
//
//  Created by Tunde on 21/08/2021.
//

import SwiftUI

@main
struct AsyncImageStarterApp: App {
    
    @StateObject private var vm = MenuViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(vm)
            }
        }
    }
}
