//
//  ProgressView+RoundedStyle.swift
//  ProgressViewInSwiftUI
//
//  Created by Tunde Adegoroye on 27/01/2022.
//

import Foundation
import SwiftUI

struct RoundedProgressViewStyle: ProgressViewStyle {
    
    let color: Color
    
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .padding()
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
