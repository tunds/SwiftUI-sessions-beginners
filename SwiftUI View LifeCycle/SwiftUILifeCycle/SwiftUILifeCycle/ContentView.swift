//
//  ContentView.swift
//  SwiftUILifeCycle
//
//  Created by Tunde Adegoroye on 11/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showText: Bool = false
    @State private var buttonColor: Color = .mint
    
    var body: some View {
        Button("Show Text") {
            showText.toggle()
        }
        .foregroundStyle(buttonColor)
        .sheet(isPresented: $showText) {
            Text("Hey i'm some text")
                .onDisappear {
                    buttonColor = .black
                }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    buttonColor = .orange
                }
        }
        .onChange(of: buttonColor) { newValue in
            print("Color changed too: \(newValue)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
