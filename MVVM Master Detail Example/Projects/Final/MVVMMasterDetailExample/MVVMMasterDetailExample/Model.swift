//
//  Model.swift
//  MVVMMasterDetailExample
//
//  Created by Tunde Adegoroye on 14/05/2022.
//

import Foundation

struct User: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
}

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}

struct Company: Codable {
    let name: String
    let catchPhrase: String
    let bs: String
}

struct Geo: Codable {
    let lat: String
    let lng: String
}

extension User {
    
    static var dummy: User {
        .init(id: 1,
              name: "Tunde Ads",
              username: "tundsdev",
              email: "tunds@gmail.com",
              address: .init(street: "Street 1",
                             suite: "Suite 1",
                             city: "Manny",
                             zipcode: "M40 000",
                             geo: .init(lat: "0.61", lng: "0.24")),
              phone: "0161-MANNY-ON-THE-MAP",
              website: "tundsdev.com",
              company: .init(name: "tundsdev",
                             catchPhrase: "tundsdev",
                             bs: ""))
    }
}
