//
//  ContentView.swift
//  Searchable
//
//  Created by Tunde on 08/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = PeopleViewModel()
    
    var body: some View {
        NavigationView {
            PeopleView(vm: vm)
                .refreshable {
                    await vm.generatePerson()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
