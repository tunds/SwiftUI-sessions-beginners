//
//  TabViewInSwiftUIApp.swift
//  TabViewInSwiftUI
//
//  Created by Tunde Adegoroye on 02/02/2022.
//

import SwiftUI

enum Screen {
    case one
    case two
}

final class TabRouter: ObservableObject {
    
    @Published var screen: Screen = .one
    
    func change(to screen: Screen) {
        self.screen = screen
    }
}

@main
struct TabViewInSwiftUIApp: App {
    
    @StateObject private var router = TabRouter()
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $router.screen) {
                ScreenOne()
                    .badge(10)
                    .tag(Screen.one)
                    .environmentObject(router)
                    .tabItem {
                        Label("Screen 1", systemImage: "calendar")
                    }
                ScreenTwo()
                    .tag(Screen.two)
                    .environmentObject(router)
                    .tabItem {
                        Label("Screen 2", systemImage: "house")
                    }
            }
        }
    }
}
