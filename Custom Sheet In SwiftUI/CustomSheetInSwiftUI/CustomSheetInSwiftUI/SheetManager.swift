//
//  SheetManager.swift
//  CustomSheetInSwiftUI
//
//  Created by Tunde Adegoroye on 21/03/2022.
//

import Foundation

final class SheetManager: ObservableObject {
    
    typealias Config = Action.Info
    
    enum Action {
        
        struct Info {
            let systemName: String
            let title: String
            let content: String
        }
        
        case na
        case present(info: Info)
        case dismiss
    }
    
    @Published private(set) var action: Action = .na
    
    func present(with config: Config) {
        guard !action.isPresented else { return }
        self.action = .present(info: config)
    }
    
    func dismiss() {
        self.action = .dismiss
    }
}

extension SheetManager.Action {
    
    var isPresented: Bool {
        guard case .present(_) = self else { return false }
        return true
    }
}
