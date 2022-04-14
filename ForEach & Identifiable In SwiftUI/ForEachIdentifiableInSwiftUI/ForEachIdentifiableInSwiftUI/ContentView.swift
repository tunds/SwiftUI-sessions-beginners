//
//  ContentView.swift
//  ForEachIdentifiableInSwiftUI
//
//  Created by Tunde Adegoroye on 28/02/2022.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    
    @State var people: [Person] = []
    
    var body: some View {
        VStack {
            ForEach(people) { person in
               PersonView(person: person)
            }
        }
        .onAppear {
            self.people = Person.data
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Person {
    
    static var data: [Person] {
        [
            Person(firstName: "Billy", lastName: "Bob"),
            Person(firstName: "Billy", lastName: "May"),
            Person(firstName: "Jill", lastName: "Jan")
        ]
    }
}
