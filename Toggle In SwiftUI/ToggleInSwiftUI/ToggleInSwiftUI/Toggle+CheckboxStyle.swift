//
//  Toggle+CheckboxStyle.swift
//  ToggleInSwiftUI
//
//  Created by Tunde Adegoroye on 27/01/2022.
//

import Foundation
import SwiftUI

struct ToggleCheckboxStyle: ToggleStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: "checkmark.square")
                .symbolVariant(configuration.isOn ? .fill : .none)
        }
    }
}

extension ToggleStyle where Self == ToggleCheckboxStyle {
    static var checklist: ToggleCheckboxStyle { .init() }
}
