//
//  ContentView.swift
//  SwiftUIColorPicker
//
//  Created by Tunde on 24/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color: Color = .blue
    
    var body: some View {
        VStack {
            Image("tundsdev")
                .resizable()
                .frame(width: 200, height: 200)
                .background(color)
                .clipShape(Circle())
                    
            ColorPicker(selection: $color,
                        supportsOpacity: false) {
                Label("Color Pallete", systemImage: "paintpalette")
                    .symbolVariant(.fill)
                    .padding(.leading, 8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
