//
//  LaunchScreenManager.swift
//  LaunchScreenInSwiftUI
//
//  Created by Tunde Adegoroye on 18/03/2022.
//

import Foundation

enum LaunchScreenPhase {
    case first
    case second
    case completed
}

final class LaunchScreenManager: ObservableObject {
    
    @Published private(set) var state: LaunchScreenPhase = .first
    
    func dismiss() {
        
        self.state = .second

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            
            self.state = .completed
        }
    }
}
