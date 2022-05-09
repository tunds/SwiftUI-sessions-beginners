//
//  CreateContactViewModel.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import Foundation

final class CreateContactViewModel: ObservableObject {
    
    @Published var newContact: NewContact = .empty
    
    var isValid: Bool {
        !newContact.general.prefix.isEmpty &&
        !newContact.general.firstName.isEmpty &&
        !newContact.general.lastName.isEmpty &&
        !newContact.contactInfo.phoneNumber.isEmpty
    }
    
    func clearAll() {
        self.newContact = .empty
    }
}
