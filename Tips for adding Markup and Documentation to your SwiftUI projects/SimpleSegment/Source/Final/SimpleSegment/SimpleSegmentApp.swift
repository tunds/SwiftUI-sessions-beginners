//
//  SimpleSegmentApp.swift
//  SimpleSegment
//
//  Created by Tunde Adegoroye on 02/03/2022.
//

import SwiftUI

@main
struct SimpleSegmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(options: GameEventSegement.data) { item in
                print(item)
            }
        }
    }
}
