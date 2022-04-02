//
//  ContentView.swift
//  ContextMenuInSwiftUI
//
//  Created by Tunde Adegoroye on 29/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .contextMenu {
                Button(action: add) {
                    Label("Add item", systemImage: "plus.app")
                }
                
                Button(action: edit) {
                    Label("Edit item", systemImage: "square.and.pencil")
                }
            }
    }
}

private extension ContentView {
    
    func add() {
        print("Perform add")
    }
    
    func edit() {
        print("Perform edit")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
