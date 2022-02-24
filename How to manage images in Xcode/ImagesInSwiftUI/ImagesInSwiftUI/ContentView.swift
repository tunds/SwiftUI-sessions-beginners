//
//  ContentView.swift
//  ImagesInSwiftUI
//
//  Created by Tunde on 03/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Logo-Alt")
            .resizable()
            .frame(width: 100,
                   height: 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
