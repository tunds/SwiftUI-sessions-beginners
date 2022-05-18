//
//  LoginView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var session: SessionManager

    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack(spacing: 0) {
                info
                username
                password
                login
            }
            
        }
    }
}

private extension LoginView {
    
    var info: some View {
        
        VStack(spacing: 8) {
            Text("🌎")
                .font(.system(size: 200))
            
            Text("Join the crew")
                .font(.system(size: 35,
                              weight: .heavy,
                              design: .rounded))
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .font(.system(size: 18,
                              weight: .regular,
                              design: .rounded))
            
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .padding(.bottom, 50)
    }
    
    var username: some View {
        
        TextField("Username", text: .constant(""))
            .padding()
            .frame(width: 350, height: 50)
            .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                     style: .continuous))
            .font(.system(size: 13, weight: .bold, design: .rounded))
            .padding(.bottom, 8)
    }
    
    var password: some View {
        
        SecureField("Password", text: .constant(""))
            .padding()
            .frame(width: 350, height: 50)
            .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                     style: .continuous))
            .font(.system(size: 13, weight: .bold, design: .rounded))
    }
    
    var login: some View {
        Button("Login") {
            session.signIn()
        }
        .font(.system(size: 20, weight: .bold, design: .rounded))
        .padding(.horizontal, 60)
        .padding(.vertical, 15)
        .background(.white, in: RoundedRectangle(cornerRadius: 10,
                                                 style: .continuous))
        .padding(.top, 40)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(SessionManager())
    }
}
