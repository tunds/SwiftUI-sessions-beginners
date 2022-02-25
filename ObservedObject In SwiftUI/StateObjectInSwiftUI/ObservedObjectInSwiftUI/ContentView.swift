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
            LoginView(vm: vm)
        case .loggedIn:
            LoggedInView(vm: vm)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
