//
//  LoggedInView.swift
//  StateObjectInSwiftUI
//
//  Created by Tunde on 16/01/2022.
//

import SwiftUI

struct LoggedInView: View {
    
    @ObservedObject var vm: LoginViewModel

    var body: some View {
        
        VStack {
            Text("Hey, you're now logged in")
            Button {
                vm.logout()
            } label: {
                Text("Logout")
            }
        }
    }
}

struct LoggedInView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedInView(vm: .init())
    }
}
