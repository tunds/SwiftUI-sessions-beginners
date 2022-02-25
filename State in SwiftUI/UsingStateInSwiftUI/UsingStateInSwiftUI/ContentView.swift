//
//  ContentView.swift
//  BreakingDownStateAndDataFlow
//
//  Created by Tunde on 13/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn: Bool = false
    
    var body: some View {
        
        VStack {

            
            if isOn {
                Text("Switch is on")
            } else {
                Text("Switch is off")
            }
            
            Text(isOn ? "Switch is On" : "Switch is off")
            
            Button {
                isOn.toggle()
            } label: {
                Text("Toggle Me")
            }

                        Image(systemName: "lightbulb")
                            .font(.largeTitle)
                            .symbolVariant(isOn ? .fill : .none)
                            .foregroundColor(isOn ? .yellow : .black)
            
            
            
            Toggle(isOn: $isOn) {
                Text("Toggle Light Switch")
            }
            .labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
