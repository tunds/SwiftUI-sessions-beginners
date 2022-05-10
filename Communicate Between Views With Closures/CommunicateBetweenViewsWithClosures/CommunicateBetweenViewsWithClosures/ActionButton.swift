//
//  ActionButton.swift
//  CommunicateBetweenViewsWithClosures
//
//  Created by Tunde Adegoroye on 04/04/2022.
//

import SwiftUI

struct ActionButton: View {
    
    enum Action {
        case color
        case scale
    }
    
    typealias ButtonAction = (_ type: Action) -> Void
    let action: ButtonAction
    
    var body: some View {
        VStack {
            Button {
                action(.color)
            } label: {
                Text("Toggle Color")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button {
                action(.scale)
            } label: {
                Text("Toggle Scale")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}
 
struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton { _ in }
    }
}
