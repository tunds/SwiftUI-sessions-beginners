//
//  ContentView.swift
//  ManageColoursInSwiftUI
//
//  Created by Tunde on 04/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Accent Color")
                .padding()
                .foregroundColor(.accentColor)
            Text("Custom Color")
                .padding()
                .foregroundColor(Color("Secondary"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
