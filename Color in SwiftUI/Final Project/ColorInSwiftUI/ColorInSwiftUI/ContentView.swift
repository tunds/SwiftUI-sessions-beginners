//
//  ContentView.swift
//  ColorInSwiftUI
//
//  Created by Tunde on 04/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        ZStack {
//            Color.red
//                .ignoresSafeArea()
//            Text("Heyy")
//        }
        
        VStack {
            Color.red
                .frame(width: 100, height: 100)
            .opacity(0.5)
            Color("secondary")
                .frame(width: 100, height: 100)
            Color(red: 48 / 255, green: 60 / 255, blue: 255)
                .frame(width: 100, height: 100)
            Color(uiColor: .init(.mint))
                .frame(width: 100, height: 100)
            Text("Custom Color")
                .bold()
                .foregroundColor(Color("secondary"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
