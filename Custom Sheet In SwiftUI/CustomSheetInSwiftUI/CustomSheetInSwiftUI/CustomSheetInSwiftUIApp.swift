//
//  CustomSheetInSwiftUIApp.swift
//  CustomSheetInSwiftUI
//
//  Created by Tunde Adegoroye on 21/03/2022.
//

import SwiftUI

@main
struct CustomSheetInSwiftUIApp: App {
    
    @StateObject var sheetManager = SheetManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(sheetManager)
        }
    }
}
