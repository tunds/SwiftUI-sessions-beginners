//
//  UserModel.swift
//  SwiftUIAPICallMVVMUrlSessionExample
//
//  Created by Tunde Adegoroye on 25/04/2022.
//

import Foundation

struct User: Codable {
    let id: Int
    let email: String
    let name: String
    let company: Company
}

struct Company: Codable {
    let name: String
}
