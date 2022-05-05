//
//  RegistrationManager.swift
//  TestProject
//
//  Created by Tunde Adegoroye on 24/04/2022.
//

import Foundation

final class RegistrationManager: ObservableObject {
    
    enum Screen: Int, CaseIterable {
        case username
        case age
        case bio
    }
    
    @Published var active: Screen = Screen.allCases.first!
    @Published var user = User(username: "", age: 18, bio: "")
    
    @Published var hasError = false
    @Published var error: RegistrationError?
    
    func next() {
        let nextScreenIndex = min(active.rawValue + 1, Screen.allCases.last!.rawValue)
        if let screen = Screen(rawValue: nextScreenIndex) {
            active = screen
        }
    }
    
    func previous() {
        let previousScreenIndex = max(active.rawValue - 1, Screen.allCases.first!.rawValue)
        if let screen = Screen(rawValue: previousScreenIndex) {
            active = screen
        }
    }
    
    func validateUsername() {
        hasError = user.username.isEmpty
        error = user.username.isEmpty ? .emptyUsername : nil
    }
    
    func validateBio() {
        hasError = user.bio.isEmpty
        error = user.bio.isEmpty ? .emptyBio : nil
    }
}

extension RegistrationManager {
    struct User {
        var username: String
        var age: Double
        var bio: String
    }
}

extension RegistrationManager {
    enum RegistrationError: LocalizedError {
        case emptyUsername
        case emptyBio
        
        var errorDescription: String? {
            switch self {
            case .emptyUsername:
                return "⚠️ Username is empty"
            case .emptyBio:
                return "⚠️ Bio is empty"
            }
        }
    }
}
