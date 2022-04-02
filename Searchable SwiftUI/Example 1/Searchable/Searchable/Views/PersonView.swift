//
//  PersonView.swift
//  PersonView
//
//  Created by Tunde on 28/07/2021.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        Text("\(person.gender.rawValue) \(person.name)")
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: .init(name: "Billy Bob",
                                 gender: .male))
    }
}
