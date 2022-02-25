//
//  ContentView.swift
//  BordersInSwiftUI
//
//  Created by Tunde on 07/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
//            .padding()
//            .border(.red, width: 5)
//        Text("Hello, world!")
//            .padding()
//            .overlay(
//                RoundedRectangle(cornerRadius: 16)
//                    .stroke(Color.blue, lineWidth: 4)
//            )
        Circle()
            .strokeBorder(
                AngularGradient(gradient: Gradient(colors: [.red, .yellow, .red]),
                                center: .center,
                                endAngle: .degrees(360)),
                lineWidth: 50
            )
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
