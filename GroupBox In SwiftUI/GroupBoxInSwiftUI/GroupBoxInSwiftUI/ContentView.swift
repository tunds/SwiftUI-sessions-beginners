//
//  ContentView.swift
//  GroupBoxInSwiftUI
//
//  Created by Tunde Adegoroye on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            GroupBox("Saved Items") {
                Text("You've saved 5 items")
            }
            
            GroupBox {
                Text("You've saved 5 items")
            } label: {
                Label("Saved Items", systemImage: "star")
                    .symbolVariant(.fill)
            }
            
            GroupBox {
                Text("You've saved 5 items")
            } label: {
                Label("Saved Items", systemImage: "star")
                    .symbolVariant(.fill)
            }
            .groupBoxStyle(.saved)

        }
        .padding()
        .background(.mint)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

