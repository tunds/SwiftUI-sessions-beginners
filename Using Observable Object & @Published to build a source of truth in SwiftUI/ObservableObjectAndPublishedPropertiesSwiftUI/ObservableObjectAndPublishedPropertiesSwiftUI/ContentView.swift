//
//  ContentView.swift
//  ObservableObjectAndPublishedPropertiesSwiftUI
//
//  Created by Tunde on 15/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = PeopleViewModel()
    
    var body: some View {
        VStack {
            if vm.isLoading {
                ProgressView()
                Text("Loading...")
                    .padding()
            } else {
                Text(vm.people.isEmpty ? "No Users" : "Managed to get \(vm.people.count) users")
            }
            Button(action: vm.fetchPeople) {
                Text("Fetch some people")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
