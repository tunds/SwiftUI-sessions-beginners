//
//  ContentView.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 29/01/2022.
//

import SwiftUI

struct ContentView: View {

    struct User {
        var username: String = ""
        var password: String = ""
    }
    
    @State private var user: User = .init()
    @FocusState private var inputFocused: Bool

    var body: some View {
        VStack {
            usernameTxtVw
            passwordTxtVw
            submitBtn
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .disableAutocorrection(true)
        .textInputAutocapitalization(.never)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()

                Button(action: resignKeyboard) {
                    Text("Done")
                }
            }
        }
        .onSubmit(of: .text, submit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    var usernameTxtVw: some View {
        TextField("Username",
                  text: $user.username,
                  prompt: Text("Username"))
            .textContentType(.username)
            .focused($inputFocused)
    }
    
    var passwordTxtVw: some View {
        SecureField("Password",
                  text: $user.password,
                  prompt: Text("Password"))
            .textContentType(.password)
            .focused($inputFocused)
            .submitLabel(.done)
    }
    
    var submitBtn: some View {
        Button(action: submit) {
            Text("Submit")
        }
    }
}

private extension ContentView {
    
    func submit() {
        print("The user inputted: \(user)")
        resignKeyboard()
    }
    
    func resignKeyboard() {
        if #available(iOS 15, *) {
            inputFocused = false
        } else {
            dismissKeyboard()
        }
    }
}

extension View {
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

