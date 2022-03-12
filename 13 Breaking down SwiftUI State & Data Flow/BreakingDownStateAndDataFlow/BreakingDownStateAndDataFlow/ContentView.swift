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
