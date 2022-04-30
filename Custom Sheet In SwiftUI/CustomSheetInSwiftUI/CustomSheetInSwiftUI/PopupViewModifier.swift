//
//  PopupViewModifier.swift
//  CustomSheetInSwiftUI
//
//  Created by Tunde Adegoroye on 22/03/2022.
//

import Foundation
import SwiftUI

struct PopupViewModifier: ViewModifier {
    
    @ObservedObject var sheetManager: SheetManager
        
    func body(content: Content) -> some View {
        content.overlay(alignment: .bottom) {
            if case let .present(config) = sheetManager.action {
                PopupView(config: config) {
                    withAnimation(.spring()) {
                        sheetManager.dismiss()
                    }
                }
            }
        }
    }
}

extension View {
    func popup(with sheetManager: SheetManager) -> some View {
        self.modifier(PopupViewModifier(sheetManager: sheetManager))
    }
}
