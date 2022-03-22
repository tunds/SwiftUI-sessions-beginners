//
//  ContentView.swift
//  LinkInSwiftUI
//
//  Created by Tunde on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Link(destination: .init(string: "https://www.youtube.com/c/tundsdev")!) {
            Image("Logo")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
