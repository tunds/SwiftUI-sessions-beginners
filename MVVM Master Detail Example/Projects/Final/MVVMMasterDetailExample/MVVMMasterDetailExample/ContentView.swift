//
//  ContentView.swift
//  MVVMMasterDetailExample
//
//  Created by Tunde Adegoroye on 09/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = UsersViewModel()
    
    var body: some View {
        ZStack {
            if vm.isLoading {
                ProgressView()
            } else {
                NavigationView {
                    List {
                        ForEach(vm.users, id: \.id) { user in
                            
                            UserInfoView(name: user.name)
                                .background(
                                    NavigationLink("",
                                                   destination: UserDetailView(user: user))
                                    .opacity(0)
                                )
                        }
                        .listRowSeparator(.hidden)
                    }
                    .listStyle(.plain)
                    .navigationTitle("Users")
                }
            }
        }
        .task {

            do {
                try await vm.fetchUsers()
            } catch {
                print(error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
