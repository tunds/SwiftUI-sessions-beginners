//
//  ContentView.swift
//  ListsInSwiftUI
//
//  Created by Tunde Adegoroye on 24/03/2022.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
}



struct ContentView: View {
    
    private var favouriteItems = (1...3).map { Product(name: "Item \($0)") }
    private var products = (1...3).map { Product(name: "Item \($0)") }

    var body: some View {
        List {
            Section("My favourite products") {
                ForEach(favouriteItems) { item in
                    Text(item.name)
                }
            }
            .headerProminence(.increased)
            
            Section {
                ForEach(favouriteItems) { item in
                    Text(item.name)
                }
            } header: {
                Image(systemName: "bag")
                    .font(.title)
                    .symbolVariant(.fill)
                    .foregroundColor(.blue)
            } footer: {
                Text("These are all the products you can choose from")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .listStyle(.automatic)
            .previewDisplayName("Automatic Style")
        
        ContentView()
            .listStyle(.plain)
            .previewDisplayName("Plain Style")
        
        ContentView()
            .listStyle(.grouped)
            .previewDisplayName("Grouped Style")
        
        ContentView()
            .listStyle(.inset)
            .previewDisplayName("Inset Style")
        
        ContentView()
            .listStyle(.insetGrouped)
            .previewDisplayName("Inset Grouped Style")
        
        ContentView()
            .listStyle(.sidebar)
            .previewDisplayName("Sidebar Style")
    }
}
