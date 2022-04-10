//
//  ContentView.swift
//  Safe Area In SwiftUI
//
//  Created by Tunde Adegoroye on 10/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    private var gradientColors: [Color] {
        [
           .blue,
           .red
       ]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                
                backgroundVw
                
                ScrollView {
                    Text("Content")
                        .bold()
                        .font(.largeTitle)
                    TextField("Some TextField", text: .constant(""))
                    ForEach(0...15, id: \.self) { item in
                        Text("\(item)")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
                    }
                }
                .foregroundColor(.white)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
            .navigationTitle("Home")
            // .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

private extension ContentView {
    
    var backgroundVw: some View {
        LinearGradient(colors: gradientColors,
                       startPoint: .top,
                       endPoint: .bottom)
            .ignoresSafeArea()
//            .ignoresSafeArea(.container, edges: [.bottom])
    }
}
