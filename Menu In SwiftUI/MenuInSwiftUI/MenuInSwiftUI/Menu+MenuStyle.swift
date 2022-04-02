//
//  Menu+MenuStyle.swift
//  MenuInSwiftUI
//
//  Created by Tunde Adegoroye on 29/03/2022.
//

import Foundation
import SwiftUI

struct MenuButtonStyle: MenuStyle {
    func makeBody(configuration: Configuration) -> some View {
        Menu(configuration)
            .padding()
            .foregroundColor(.white)
            .background(.blue, in: RoundedRectangle(cornerRadius: 8,
                                                    style: .continuous))
    }
}

extension MenuStyle where Self == MenuButtonStyle {
    static var button: MenuButtonStyle { .init() }
}
