//
//  ContentView.swift
//  UserDefaultsAndAppStorageInSwiftUI
//
//  Created by Tunde Adegoroye on 13/04/2022.
//

import SwiftUI

struct ContentView: View {
        
    @AppStorage("bulbToggle") private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "lightbulb")
                .font(.system(size: 100,
                              weight: .bold,
                              design: .rounded))
                .padding(.bottom, 40)
                .symbolVariant(isOn ? .fill : .none)
                .foregroundStyle(isOn ? .yellow : .black)
                .animation(.easeInOut, value: isOn)
            Text(isOn ? "Light is on" : "Light is off")
                .font(.system(size: 20,
                              weight: .bold,
                              design: .rounded))
            Button(isOn ? "Turn off" : "Turn on") {
                isOn.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
