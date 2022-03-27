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
    
    private let items = (1...100).map { Product(name: "Item \($0)") }
    
    var body: some View {
        List {
            ForEach(items) { item in
                Text(item.name)
//                    .listRowSeparator(.hidden)
//                    .listRowBackground(Color.mint)
//                    .listRowSeparatorTint(.red)
//                    .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 0))
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
