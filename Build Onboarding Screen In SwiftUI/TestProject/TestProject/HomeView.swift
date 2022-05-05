//
//  HomeView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var session: SessionManager
    
    var body: some View {
        VStack(spacing: 16) {
            Text("[Home Content Here]")
                .font(.system(size: 20,
                              weight: .heavy,
                              design: .rounded))
            Button("Sign Out") {
                session.signOut()
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(SessionManager())
    }
}
