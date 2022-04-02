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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
