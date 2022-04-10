//
//  NewContact.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 09/04/2022.
//

import Foundation

struct NewContact: Identifiable {
    let id = UUID()
    var general: General
    var contactInfo: ContactInfo
    var emergency: Emergency
}

extension NewContact {
    struct General {
        var prefix: String
        var gender: Gender
        var firstName: String
        var lastName: String
        var company: String
    }
}

extension NewContact.General {
    enum Gender: String, Identifiable, CaseIterable {
        var id: Self { self }
        case male
        case female
        case na = "Prefer not to say"
    }
}

extension NewContact {
    struct ContactInfo {
        var phoneNumber: String
        var email: String
    }
}

extension NewContact {
    struct Emergency {
        var isEmergency: Bool
        var notes: String
    }
}

extension NewContact {
    
    static var empty: NewContact {
        
        let general = NewContact.General(prefix: "",
                                         gender: NewContact.General.Gender.allCases.first!,
                                         firstName: "",
                                         lastName: "",
                                         company: "")
        
        let contactInfo = NewContact.ContactInfo(phoneNumber: "",
                                                 email: "")
        
        let emergency = NewContact.Emergency(isEmergency: false,
                                             notes: "")
        
        return NewContact(general: general, contactInfo: contactInfo, emergency: emergency)
    }
}
