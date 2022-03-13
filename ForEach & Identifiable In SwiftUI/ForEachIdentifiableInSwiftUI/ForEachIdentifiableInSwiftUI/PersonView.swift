//
//  PersonView.swift
//  ForEachIdentifiableInSwiftUI
//
//  Created by Tunde Adegoroye on 28/02/2022.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        Text("\(person.firstName) \(person.lastName)")
            .padding()
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.data.first!)
    }
}
