//
//  SyncView.swift
//  AnimationCurvesAndTimingInSwiftUI
//
//  Created by Tunde Adegoroye on 15/03/2022.
//

import SwiftUI

struct AnimationConfig: Identifiable {
    let id = UUID()
    let animation: Animation
    let description: String
}

struct SyncView: View {
    
    @State private var isSyncing: Bool = false
    let config: AnimationConfig
    
    private var rotationAnimation: Animation {
        config
        .animation
        .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "arrow.2.circlepath")
                .symbolVariant(.circle.fill)
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .rotationEffect(.init(degrees: isSyncing ? 360 : 0))
                .animation(isSyncing ? rotationAnimation : .default, value: isSyncing)
            
            Text(config.description)
        }
        .onAppear {
            isSyncing = true
        }
    }
}

struct SyncView_Previews: PreviewProvider {
    static var previews: some View {
        SyncView(config: .options.first!)
    }
}

extension AnimationConfig {
    
    static let options: [AnimationConfig] = [
        
        .init(animation: .easeInOut, description: "Ease In Out"),
        .init(animation: .easeIn, description: "Ease In"),
        .init(animation: .easeOut, description: "Ease Out"),
        .init(animation: .linear, description: "Linear"),
        .init(animation: .easeInOut(duration: 1.5), description: "Ease In Out 1.5s"),
        .init(animation: .easeIn(duration: 1.5), description: "Ease In 1.5s"),
        .init(animation: .easeOut(duration: 1.5), description: "Ease Out 1.5s"),
        .init(animation: .timingCurve(1, 0, 0.79, 0.97, duration: 1), description: "Custom Cubic Bezier Curve"),
        .init(animation: .spring(), description: "Default spring"),
        .init(animation: .interactiveSpring(), description: "Interactive spring"),
        .init(animation: .interpolatingSpring(stiffness: 1,
                                              damping: 1), description: "Interpolating spring")


    ]
}
