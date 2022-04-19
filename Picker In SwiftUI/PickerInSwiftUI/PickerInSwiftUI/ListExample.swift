//
//  ListExample.swift
//  PickerInSwiftUI
//
//  Created by Tunde Adegoroye on 19/03/2022.
//

import SwiftUI

struct ListExample: View {
    
    @State private var selectedName: String = ""
    
    let names: [String] = [
        "Tunde",
        "Billy",
        "Bob"
    ]
    
    var body: some View {
        List {
            
            
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

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}
