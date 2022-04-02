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
    var isFavourite: Bool
}

extension Product {
    static let items = (1...5).map { Product(name: "Item \($0)", isFavourite: false) }
}

final class ProductsManager: ObservableObject {
    
    @Published var dataSource = Product.items
    
    var favouriteItems: [Product] { dataSource.filter{ $0.isFavourite } }
    
    func remove(_ indexSet: IndexSet) {
        dataSource.remove(atOffsets: indexSet)
    }
    
    func move(from currentIndexSet: IndexSet, to newIndex: Int) {
        dataSource.move(fromOffsets: currentIndexSet, toOffset: newIndex)
    }
}

struct ContentView: View {
    
    @StateObject private var manager = ProductsManager()
    
    var body: some View {
        NavigationView {
            List {
                
                if !manager.favouriteItems.isEmpty {
                    Section("My favourite products") {
                        ForEach(manager.favouriteItems) { item in
                            Text(item.name)
                        }
                    }
                    .headerProminence(.increased)
                }
                
                Section {
                    ForEach($manager.dataSource) { $item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Button {
                                withAnimation {
                                    item.isFavourite.toggle()
                                }
                            } label: {
                                Image(systemName: "star")
                                    .foregroundColor(.yellow)
                                    .symbolVariant(item.isFavourite ? .fill : .none)
                            }
                        }
                    }
                    .onDelete { indexSet in
                        manager.remove(indexSet)
                    }
                    .onMove { previousIndexSet, newIndex in
                        manager.move(from: previousIndexSet, to: newIndex)
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
            .navigationTitle("Products")
            .toolbar { EditButton() }
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
