//
//  ContentView.swift
//  DividerSwiftUI
//
//  Created by Tunde on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            VStack {
                Text("1.(VStack) Example Below")
                Divider()
                    .frame(width: 100)
            }
            
            Group {
                Text("2.(Group) Example Below")
                Divider()
            }
            
            HStack {
                Text("1.(HStack) Example to the right")
                Divider()
                    .background(Color.red)
                    .frame(height: 50)
                Image(systemName: "lock")
            }
        }
        .padding()
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
