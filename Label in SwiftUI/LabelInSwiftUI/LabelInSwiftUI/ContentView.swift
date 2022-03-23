//
//  ContentView.swift
//  LabelInSwiftUI
//
//  Created by Tunde on 25/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Label("Pick a Colour", systemImage: "paintpalette")
            Label("tundsdev thumbnail", image: "logo-thumbnail")
            Link(destination: .init(string: "https://www.youtube.com/c/tundsdev")!) {
                
                Label {
                    Text("Subscribe to the channel")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .background(.red)
                        .clipShape(Capsule())
                } icon: {
                    Image("Logo")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                }
            }

            Label("tundsdev thumbnail",
                  image: "logo-thumbnail")
                .labelStyle(CapsuleStyle(color: .blue))
            
            Label("tundsdev thumbnail",
                  image: "logo-thumbnail")
                .labelStyle(StrongCapsuleStyle(color: .blue))
            
            Label("tundsdev thumbnail",
                  image: "logo-thumbnail")
                .labelStyle(StrongCapsuleStyle(color: .blue))
                .labelStyle(.iconOnly)
            
            Label("tundsdev thumbnail",
                  image: "logo-thumbnail")
                .labelStyle(StrongCapsuleStyle(color: .blue))
                .labelStyle(.titleOnly)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
