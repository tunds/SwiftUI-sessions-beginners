//
//  LaunchScreenView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 19/03/2022.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    @State private var firstPhaseIsAnimating: Bool = false
    @State private var secondPhaseIsAnimating: Bool = false

    private let timer = Timer.publish(every: 0.65,
                                      on: .main,
                                      in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            background
            logo
        }
        .onReceive(timer) { input in
        
            switch launchScreenManager.state {
            case .first:
                withAnimation(.spring()) {
                    // First phase with continous scaling
                    firstPhaseIsAnimating.toggle()
                }
            case .second:
                withAnimation(.easeInOut) {
                    // First phase with continous scaling
                    secondPhaseIsAnimating.toggle()
                }
            default: break
                
            }
        }
        .opacity(secondPhaseIsAnimating ? 0 : 1)
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
            .environmentObject(LaunchScreenManager())
    }
}

private extension LaunchScreenView {
    
    var background: some View {
        Color("launch-screen-background")
            .edgesIgnoringSafeArea(.all)
    }
    
    var logo: some View {
        Image("logo")
            .scaleEffect(firstPhaseIsAnimating ? 0.6 : 1)
            .scaleEffect(secondPhaseIsAnimating ? UIScreen.main.bounds.size.height / 4 : 1)
    }
}
