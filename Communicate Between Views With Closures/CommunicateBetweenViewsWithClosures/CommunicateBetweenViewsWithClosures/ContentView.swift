//
//  ContentView.swift
//  CommunicateBetweenViewsWithClosures
//
//  Created by Tunde Adegoroye on 04/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive: Bool = false
    @State var isScaled: Bool = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(isActive ? .red : .green)
                .frame(width: 150, height: 150)
                .scaleEffect(isScaled ? 0.5 : 1)
            ActionButton { type in
                switch type {
                case .color:
                    withAnimation {
                        isActive.toggle()
                    }
                case .scale:
                    withAnimation(.spring()) {
                        isScaled.toggle()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
