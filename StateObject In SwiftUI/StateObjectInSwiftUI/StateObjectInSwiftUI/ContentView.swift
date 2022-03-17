//
//  ContentView.swift
//  StateObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = LoginViewModel()
    
    var body: some View {
        
        switch vm.state {
        case .loading:
            ProgressView()
        case .notLoggedIn:
            LoginView(user: $vm.user) {
                vm.login()
            }
        case .loggedIn:
            LoggedInView {
                vm.logout()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
