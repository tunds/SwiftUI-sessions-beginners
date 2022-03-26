//
//  ContentView.swift
//  ToggleInSwiftUI
//
//  Created by Tunde Adegoroye on 27/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack {
            
            Group {
                Toggle("Turn me on?", isOn: $isSelected)
                Text(isSelected ? "I am turned on" : "I'm turned off")
                    .padding()
            }
            
            
            Group {
                Toggle("Turn me on?", isOn: $isSelected)
                    .labelsHidden()
                Text(isSelected ? "I am turned on" : "I'm turned off")
                    .padding()
            }
            
            Toggle(isOn: $isSelected) {

                Label(isSelected ? "Is On" : "Is Off",
                      systemImage: "lightbulb")
                    .symbolVariant(isSelected ? .fill : .none)
            }
            
            
            Toggle(isOn: $isSelected) {

                Label(isSelected ? "Is On" : "Is Off",
                      systemImage: "lightbulb")
                    .symbolVariant(isSelected ? .fill : .none)
            }
            .toggleStyle(.button)

            Toggle("", isOn: $isSelected)
                .labelsHidden()
                .toggleStyle(.checklist)
                .font(.title)
                .tint(.red)
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
