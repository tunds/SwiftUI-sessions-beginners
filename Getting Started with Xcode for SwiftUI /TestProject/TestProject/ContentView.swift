//
//  ContentView.swift
//  TestProject
//
//  Created by Tunde on 03/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .foregroundColor(.red)
                .background(Color.black)
            Text("My name is Tunde Adegoroye")
                .padding()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ContentView()
                    .navigationTitle("Title Here")
            }
            .previewDevice("iPhone SE (2nd generation)")
            NavigationView {
                ContentView()
                    .navigationTitle("Title Here")
            }
            .preferredColorScheme(.light)
            .previewDevice("iPhone 12 Pro Max")
            NavigationView {
                ContentView()
                    .navigationTitle("Title Here")
            }
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
        }
    }
}
