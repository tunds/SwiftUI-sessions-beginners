//
//  TestProjectApp.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

@main
struct TestProjectApp: App {

    @StateObject private var session = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            MainAppView()
                .environmentObject(session)
        }
    }
}
