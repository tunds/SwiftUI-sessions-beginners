//
//  ContentView.swift
//  ShapesInSwiftUI
//
//  Created by Tunde on 06/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Capsule()
            Circle()
            Ellipse()
            Rectangle()
            RoundedRectangle(cornerRadius: 8)
                .fill(.blue)
            Image("Logo")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
