//
//  ContentView.swift
//  NewsAPI
//
//  Created by Tunde on 08/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("darkModeEnabled") private var darkModeEnabled = false
    @AppStorage("systemThemeEnabled") private var systemThemeEnabled = false
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false

    private let themeManager = ThemeManager()

    private let onboardingContentManager = OnboardingContentManagerImpl(manager: PlistManagerImpl())
    
    var body: some View {
        
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Feed")
                }
            SettingsView(darkModeEnabled: $darkModeEnabled,
                         systemThemeEnabled: $systemThemeEnabled,
                         themeManager: themeManager)
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
        .fullScreenCover(isPresented: .constant(!hasSeenOnboarding),
                         content: {
                            let plistManager = PlistManagerImpl()
                            let manager = OnboardingContentManagerImpl(manager: plistManager)
                            OnboardingScreenView(manager: manager) {
                                hasSeenOnboarding = true
                            }
        })
        .onAppear {
            self.themeManager.handleTheme(darkMode: darkModeEnabled,
                                          system: systemThemeEnabled)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
