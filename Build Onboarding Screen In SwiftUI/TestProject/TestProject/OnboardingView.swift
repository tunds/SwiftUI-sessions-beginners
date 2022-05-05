//
//  OnboardingView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @StateObject private var manager = OnboardingManager()
    @State private var showBtn = false
    let action: () -> Void
    
    var body: some View {
        ZStack {
            
            Color.blue.ignoresSafeArea()
            
            if !manager.items.isEmpty {
                
                TabView {
                    
                    ForEach(manager.items) { item in
                        OnboardingInfoView(item: item)
                            .onAppear {
                                if item == manager.items.last {
                                    withAnimation(.spring().delay(0.25)) {
                                        showBtn = true
                                    }
                                }
                            }
                            .overlay(alignment: .bottom) {
                                if showBtn {
                                    Button("Continue") {
                                        action()
                                    }
                                    .font(.system(size: 20, weight: .bold, design: .rounded))
                                    .frame(width: 150, height: 50)
                                    .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                                             style: .continuous))
                                    .offset(y: 50) // Matches the height of the button
                                    .transition(.scale.combined(with: .opacity))
                                    
                                }
                            }
                    }
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
        }
        .onAppear(perform: manager.load)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView {}
    }
}
