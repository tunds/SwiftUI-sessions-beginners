//
//  UserInputViewModel.swift
//  PresentingAnDismissingViewsInSwiftUI
//
//  Created by Tunde Adegoroye on 21/03/2022.
//

import Foundation

struct UserInfo: Identifiable {
    
    enum Gender: String, Identifiable, CaseIterable {
        var id: Self { self }
        case male
        case female
        case preferNotToSay = "Prefer not to say"
    }
    
    let id = UUID()
    var firstName: String
    var lastName: String
    var gender: Gender
}

extension UserInfo {
    
    static var empty = UserInfo(firstName: "", lastName: "", gender: .male)
}

final class UserInputViewModel: ObservableObject {
    
    @Published var user: UserInfo = .empty
}
