//
//  HowToBuildAViewModelWithAClassApp.swift
//  HowToBuildAViewModelWithAClass
//
//  Created by Tunde Adegoroye on 12/04/2022.
//

import SwiftUI

@main
struct HowToBuildAViewModelWithAClassApp: App {
    
    @StateObject private var vm = CounterViewModel()

    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .environmentObject(vm)
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                
                CounterDetailView()
                    .environmentObject(vm)
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
                    }
            }
        }
    }
}
