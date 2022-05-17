//
//  ContentView.swift
//  SwiftUIAPICallMVVMUrlSessionExample
//
//  Created by Tunde Adegoroye on 25/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = UsersViewModel()
    
    @State private var hasError = false
    @State private var error: UsersViewModel.UserError?
    
    var body: some View {
        NavigationView {
            ZStack {
                
                if vm.isRefreshing {
                    ProgressView()
                } else {
                    List {
                        ForEach(vm.users, id: \.id) { user in
                            UserView(user: user)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Users")
            .task {
                await execute()
            }
            .alert(isPresented: $hasError,
                   error: error) {
                Button {
                    Task {
                        await execute()
                    }
                } label: {
                    Text("Retry")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


private extension ContentView {
    func execute() async {
        do {
            try await vm.fetchUsersNew()
        } catch {
            if let userErr = error as? UsersViewModel.UserError {
                self.hasError = true
                self.error = userErr
            }
        }
    }
}
