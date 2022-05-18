//
//  MainAppView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct MainAppView: View {
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        ZStack {
            switch session.currentState {
            case .loggedIn:
                HomeView()
                    .transition(.opacity)
            case .loggedOut:
                LoginView()
                    .transition(.opacity)
            case .onboarding:
                OnboardingView(action: session.completeOnboarding)
                    .transition(.opacity)
            case .signup:
                Color.blue.ignoresSafeArea()
                SignUpView()
                    .transition(.asymmetric(insertion: .move(edge: .trailing),
                                            removal: .opacity))
            default:
                // Splash Screen
                Color.blue.ignoresSafeArea()
            }
        }
        .animation(.easeInOut, value: session.currentState)
        .onAppear(perform: session.configureCurrentState)
    }
}

struct MainAppView_Previews: PreviewProvider {
    static var previews: some View {
        MainAppView()
            .environmentObject(SessionManager())
    }
}
