//
//  ContactsViewModel.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import Foundation

final class ContactsViewModel: ObservableObject {
    
    @Published private(set) var contacts: [NewContact] = []
    
    func add(_ contact: NewContact) {
        contacts.append(contact)
    }
}
