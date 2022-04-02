//
//  SearchableApp.swift
//  Searchable
//
//  Created by Tunde on 08/06/2021.
//

import SwiftUI

@main
struct SearchableApp: App {
    
    @State private var query = ""
    @StateObject private var vm = MenuViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(query: $query)
                    .environmentObject(vm)
            }
        }
    }
}
