//
//  Label+CapsuleStyle.swift
//  LabelInSwiftUI
//
//  Created by Tunde on 25/01/2022.
//

import Foundation
import SwiftUI

struct CapsuleStyle: LabelStyle {
    let color: Color
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .padding()
            .background(color)
            .clipShape(Capsule())
    }
}

struct StrongCapsuleStyle: LabelStyle {
    let color: Color
    func makeBody(configuration: Configuration) -> some View {
        Label {
            configuration
                .title
                .foregroundColor(.white)
                .font(.system(size: 15, weight: .bold))
        } icon: {
            configuration.icon
        }
        .padding()
        .background(color)
        .clipShape(Capsule())
    }
}
