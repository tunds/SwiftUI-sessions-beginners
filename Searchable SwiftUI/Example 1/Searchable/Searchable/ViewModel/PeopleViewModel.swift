//
//  PeopleViewModel.swift
//  PeopleViewModel
//
//  Created by Tunde on 28/07/2021.
//

import Foundation
import SwiftUI

final class PeopleViewModel: ObservableObject {
    
    private(set) var data: [Person] = [
        Person(name: "Billy Bob", gender: .male),
        Person(name: "Paschalis Ausma", gender: .male),
        Person(name: "Napoleon Donovan", gender: .male),
        Person(name: "Woodrow Ortega", gender: .male),
        Person(name: "Renee Guzman", gender: .male),
        Person(name: "Bradford Powell", gender: .male),
        Person(name: "Hattie James", gender: .male),
        Person(name: "Eloise Wolfe", gender: .male),

        Person(name: "Gunna Wido", gender: .genderNeutral),
        Person(name: "Citlalli Laokoon", gender: .genderNeutral),
        Person(name: "Antoniu Mina", gender: .genderNeutral),
        Person(name: "Karla Sharp", gender: .genderNeutral),
        Person(name: "Flora Elliott", gender: .genderNeutral),
        Person(name: "Ana Lawrence", gender: .genderNeutral),
        Person(name: "Angel Powers", gender: .genderNeutral),

        Person(name: "Anantha Rufus", gender: .female),
        Person(name: "Kephalos Akanksha", gender: .female),
        Person(name: "Kerry Mitchell", gender: .female),
        Person(name: "Geraldine Howard", gender: .female),
        Person(name: "Cecilia Ray", gender: .female),
        Person(name: "Johanna Castillo", gender: .female),
        Person(name: "Leah Perez", gender: .female),
        Person(name: "Lora Mccormick", gender: .female),
    ]
    
    @Published var filteredData = [Person]()

    func search(with query: String = "") {
        filteredData = query.isEmpty ? data : data.filter { $0.name.contains(query) }
    }
}
