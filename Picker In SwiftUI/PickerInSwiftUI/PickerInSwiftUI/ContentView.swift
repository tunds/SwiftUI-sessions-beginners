//
//  ContentView.swift
//  PickerInSwiftUI
//
//  Created by Tunde Adegoroye on 08/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedName: String = ""
    
    let names: [String] = [
        "Tunde",
        "Billy",
        "Bob"
    ]
    
    
    var body: some View {
        ScrollView {
            VStack {
                
                VStack {
                    
                    Text("Selected Name \(selectedName)")
                    Picker("Choose a name",
                           selection: $selectedName) {
                        ForEach(names, id: \.self) { name in
                            Text(name)
                        }
                    }
                    .pickerStyle(.menu)
                    
                    Picker("Choose a name",
                           selection: $selectedName) {
                        ForEach(names, id: \.self) { name in
                            Text(name)
                        }
                    }
                    .pickerStyle(.inline)
                    
                    Picker("Choose a name",
                           selection: $selectedName) {
                        ForEach(names, id: \.self) { name in
                            Text(name)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Picker("Choose a name",
                           selection: $selectedName) {
                        ForEach(names, id: \.self) { name in
                            Text(name)
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    Picker("Choose a name",
                           selection: $selectedName) {
                        ForEach(names, id: \.self) { name in
                            Text(name)
                        }
                    }
                    .pickerStyle(.automatic)
                    
                }
            }
        }
        .onAppear {
            self.selectedName = names.first ?? ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
