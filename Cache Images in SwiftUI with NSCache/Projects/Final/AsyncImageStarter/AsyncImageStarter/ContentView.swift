//
//  ContentView.swift
//  AsyncImageStarter
//
//  Created by Tunde on 21/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: MenuViewModel
    
    var body: some View {
        List {
            ForEach(vm.data) { item in
                FoodItemView(item: item)
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color.clear)
            }
        }
        .listStyle(.grouped)
        .navigationTitle("Menu")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
                .environmentObject(MenuViewModel())
        }
    }
}
