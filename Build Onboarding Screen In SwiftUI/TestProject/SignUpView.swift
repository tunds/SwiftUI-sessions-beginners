//
//  SignUpView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var session: SessionManager
    
    @StateObject private var manager = RegistrationManager()
    @State private var showPrevBtn = false
    @State private var showTerms = false
    @State private var isRegistering = false
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            TabView(selection: $manager.active) {
                
                UsernameView(text: $manager.user.username) {
                    manager.validateUsername()
                    if !manager.hasError {
                        manager.next()
                    }
                }
                    .tag(RegistrationManager.Screen.username)
                AgeView(age: $manager.user.age,
                        action: manager.next)
                    .tag(RegistrationManager.Screen.age)
                BioView(text: $manager.user.bio) {
                    manager.validateBio()
                    if !manager.hasError {
                        showTerms.toggle()
                    }
                }
                    .tag(RegistrationManager.Screen.bio)
                
            }
            .animation(.easeInOut, value: manager.active)
            .tabViewStyle(.page(indexDisplayMode: .never))
            .sheet(isPresented: $showTerms) {
                 TermsAgreementView {
                     isRegistering = true
                     
                     DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                         isRegistering = false
                         session.register()
                     }
                 }
                 .overlay {
                     if isRegistering {
                         Color.black.opacity(0.4).ignoresSafeArea()
                         ProgressView()
                             .tint(.white)
                     }
                 }
                 .interactiveDismissDisabled(isRegistering)
                 .animation(.easeInOut, value: isRegistering)
             }
        }
        .overlay(alignment: .topLeading) {
            if showPrevBtn {
                Button(action: manager.previous) {
                    Image(systemName: "chevron.backward")
                             .symbolVariant(.circle.fill)
                             .foregroundColor(.white)
                             .font(.system(size: 35,
                                           weight: .bold,
                                           design: .rounded))
                             .padding()
                }
            }

        }
        .animation(.easeInOut, value: showPrevBtn)
        .onAppear {
            UIScrollView.appearance().isScrollEnabled = false
        }
        .onDisappear {
            UIScrollView.appearance().isScrollEnabled = true
        }
        .onChange(of: manager.active) { newValue in
            if newValue == RegistrationManager.Screen.allCases.first {
                     showPrevBtn = false
                 } else {
                     showPrevBtn = true
                 }
        }
        .alert(isPresented: $manager.hasError,
               error: manager.error) { }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
            .environmentObject(SessionManager())
    }
}
