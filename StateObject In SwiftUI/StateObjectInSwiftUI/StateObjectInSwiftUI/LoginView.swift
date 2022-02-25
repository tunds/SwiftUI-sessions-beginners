//
//  LoginView.swift
//  StateObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var user: User
    let didTap: () -> Void
    
    var body: some View {
        
        VStack {
            TextField("Username",
                      text: $user.username,
                      prompt: Text("Username?"))
            SecureField("Password",
                        text: $user.password,
                        prompt: Text("Password"))
            Button {
                didTap()
            } label: {
                Text("Login")
            }
        }
        .padding(.horizontal, 8)
        .textFieldStyle(.roundedBorder)
        .onChange(of: user) { newValue in
            print("The user inputted: \(newValue)")
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(user: .constant(.init(username: "",
                                        password: ""))) {
            
        }
    }
}
