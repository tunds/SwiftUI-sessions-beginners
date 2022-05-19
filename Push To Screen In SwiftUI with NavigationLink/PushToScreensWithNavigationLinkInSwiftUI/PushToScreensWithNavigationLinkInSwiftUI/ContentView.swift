//
//  ContentView.swift
//  PushToScreensWithNavigationLinkInSwiftUI
//
//  Created by Tunde Adegoroye on 08/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var settingsNavManager = SettingsNavigationManager()
    
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
                .environmentObject(settingsNavManager)
        }
    }
}

struct HomeView: View {
    
    @State private var shouldShowDetail: Bool = false
    @State private var shouldShowDocuments: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.mint
                VStack(spacing: 16) {
                    
                    NavigationLink("#1 Go to a screen",
                                   destination: Text("Hey welcome to screen example 1"))
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    
                    NavigationLink(destination: Text("Hey welcome to the profile screen")) {
                        Image(systemName: "person")
                            .symbolVariant(.fill.circle)
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                    
                    Group {
                        Button("Trigger detail Push") {
                            shouldShowDetail.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        
                        NavigationLink("Go to detail",
                                       isActive: $shouldShowDetail) {
                            Text("Showing detail screen")
                        }
                    }
                    
                    Group {
                        Button("Trigger documents Push") {
                            shouldShowDocuments.toggle()
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.large)
                        
                        NavigationLink(isActive: $shouldShowDocuments) {
                            DocumentsDetailView(showDocumentsDetail: $shouldShowDocuments)
                        } label: {
                            Image(systemName: "doc")
                                .symbolVariant(.fill.circle)
                                .foregroundStyle(.white)
                                .font(.title)
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}

enum Screens {
    case marketingOptions
    case submitMarketingOptions
    case appVersion
}

extension Screens: Hashable {}

final class SettingsNavigationManager: ObservableObject {
    
    @Published var screen: Screens? {
        didSet {
            print("📱 \(screen)")
        }
    }
    
    func push(to screen: Screens) {
        self.screen = screen
    }
    
    func popToRoot() {
        self.screen = nil
    }
}

struct SettingsView: View {
    
    @EnvironmentObject var settingsNavManager: SettingsNavigationManager
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink
                VStack(spacing: 32) {
                    Text("Settings screen")

                    Button("Go to Marketing Options") {
                        settingsNavManager.push(to: .marketingOptions)
                    }
                    .background(
                    
                        NavigationLink(destination: MarketingOptionsView(),
                                       tag: .marketingOptions,
                                       selection: $settingsNavManager.screen) { EmptyView() }
                    )
                    
                    Button("Go to App Versions") {
                        settingsNavManager.push(to: .appVersion)
                    }
                    .background(
                        
                        NavigationLink(destination: AppVersionView(),
                                       tag: .appVersion,
                                       selection: $settingsNavManager.screen) { EmptyView() }
                    
                    )
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarLeading) {
                    
                    NavigationLink(destination: AppVersionView(),
                                   tag: .appVersion,
                                   selection: $settingsNavManager.screen) {
                        Image(systemName: "mail.stack")
                            .symbolVariant(.fill)
                    }
                    
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    
                    NavigationLink(destination: MarketingOptionsView(),
                                   tag: .marketingOptions,
                                   selection: $settingsNavManager.screen) {
                        Image(systemName: "doc.plaintext")
                            .symbolVariant(.fill)
                    }
                    
                    NavigationLink(destination: SubmitMarketingOptionsView(),
                                   tag: .submitMarketingOptions,
                                   selection: $settingsNavManager.screen) {
                        Image(systemName: "paperplane")
                            .symbolVariant(.fill)
                    }
                }
            }
        }
    }
}

struct MarketingOptionsView: View {
    
    var body: some View {
        ZStack {
            Color.orange
            VStack {
                Text("Marketing Options screen")
                NavigationLink("Go to submit marketing Options screen",
                               destination: SubmitMarketingOptionsView())
            }
        }
    }
}

struct SubmitMarketingOptionsView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) private var presentationMode

    @EnvironmentObject var settingsNavManager: SettingsNavigationManager
    
    var body: some View {
        ZStack {
            Color.teal
            VStack {
                Text("Submit Marketing Options screen")
                Button("Go to Root Screen (Settings)") {
                    settingsNavManager.popToRoot()
                }

                Button("Go to Back") {
                    if #available(iOS 15, *) {
                        dismiss()
                    } else {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct AppVersionView: View {
    var body: some View {
        VStack {
            Text("App version screen")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
