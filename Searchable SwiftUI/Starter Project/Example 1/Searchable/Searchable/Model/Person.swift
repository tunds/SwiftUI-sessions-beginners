//
//  Person.swift
//  Person
//
//  Created by Tunde on 28/07/2021.
//

import Foundation

struct Person: Identifiable {
    
    enum Gender: String {
        case male = "👨"
        case female = "👩"
        case genderNeutral = "👱"
    }
    
    let id = UUID()
    let name: String
    let gender: Gender
}
