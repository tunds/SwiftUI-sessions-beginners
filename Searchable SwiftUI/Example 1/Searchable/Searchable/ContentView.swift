//
//  ContentView.swift
//  Searchable
//
//  Created by Tunde on 08/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = PeopleViewModel()
    @State private var query = ""
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(vm.filteredData) { person in
                   
                    PersonView(person: person)
                }
            }
            .navigationTitle("People")
            .searchable(text: $query,
                        //placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "Find a person") {
                if vm.filteredData.isEmpty {
                    let randomName = vm.data.randomElement()!.name
                    Text("Maybe you're looking for \(randomName)?")
                        .searchCompletion(randomName)
                }
            }
            .onSubmit(of: .search) {
                vm.search(with: query)
            }
            .onChange(of: query) { newQuery in
                vm.search(with: newQuery)
            }
            .onAppear {
                vm.search()
            }
//            .overlay {
//                if vm.filteredData.isEmpty {
//                    EmptyView(query: $query)
//                }
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
