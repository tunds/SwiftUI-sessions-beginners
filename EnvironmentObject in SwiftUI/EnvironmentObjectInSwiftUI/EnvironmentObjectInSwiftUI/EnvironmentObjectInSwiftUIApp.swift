//
//  EnvironmentObjectInSwiftUIApp.swift
//  EnvironmentObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

@main
struct EnvironmentObjectInSwiftUIApp: App {
    
    @StateObject private var vm = PurchaseViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                PurchaseView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "creditcard")
                        Text("Purchase")
                    }
                PurchaseStateView()
                    .environmentObject(vm)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("State")
                    }
            }
        }
    }
}
