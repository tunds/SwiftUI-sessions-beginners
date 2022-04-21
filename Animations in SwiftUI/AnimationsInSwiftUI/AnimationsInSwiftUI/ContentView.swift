//
//  ContentView.swift
//  AnimationsInSwiftUI
//
//  Created by Tunde Adegoroye on 15/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isGreen: Bool = false
    @State private var isMinimized: Bool = false
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(isGreen ? .green : .red)
                .scaleEffect(isMinimized ? 0.5 : 1)
                .animation(.easeInOut, value: isGreen)
                .animation(.spring().delay(0.5).speed(0.25), value: isMinimized)
            
            Button(isGreen ? "Turn Red" : "Turn Green") {
               // withAnimation(.easeInOut) {
                    isGreen.toggle()
               // }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button(isMinimized ? "Maximize" : "Minimized") {
               // withAnimation(.spring()) {
                    isMinimized.toggle()
               // }
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
