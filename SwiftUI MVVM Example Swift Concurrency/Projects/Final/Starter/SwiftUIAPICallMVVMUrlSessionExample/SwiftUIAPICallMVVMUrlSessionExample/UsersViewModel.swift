//
//  UsersViewModel.swift
//  SwiftUIAPICallMVVMUrlSessionExample
//
//  Created by Tunde Adegoroye on 25/04/2022.
//

import Foundation

final class UsersViewModel: ObservableObject {
    
    @Published var users: [User] = []
    @Published private(set) var isRefreshing = false
    
    
//    func fetchUsers() {
//        
//        hasError = false
//        isRefreshing = true
//        
//        let usersUrlString = "https://jsonplaceholder.typicode.com/users"
//        if let url = URL(string: usersUrlString) {
//            
//            URLSession
//                .shared
//                .dataTask(with: url) { [weak self] data, response, error in
//                
//                    
//                    DispatchQueue.main.async {
//                        
//                        defer {
//                            self?.isRefreshing = false
//                        }
//                        
//                        if let error = error {
//                            self?.hasError = true
//                            self?.error = UserError.custom(error: error)
//                        } else {
//                            
//                            let decoder = JSONDecoder()
//                            decoder.keyDecodingStrategy = .convertFromSnakeCase // Handle properties that look like first_name > firstName
//                            
//                            if let data = data,
//                               let users = try? decoder.decode([User].self, from: data) {
//                                self?.users = users
//                            } else {
//                                self?.hasError = true
//                                self?.error = UserError.failedToDecode
//                            }
//                        }
//                    }
//                    
//                }.resume()
//
//        }
//    }
    
    @MainActor
    func fetchUsersNew() async throws {
        
        let usersUrlString = "https://jsonplaceholder.typicode.com/users"
        
        if let url = URL(string: usersUrlString) {

            isRefreshing = true
            
            defer { isRefreshing = false }
            
            do {
                
                let (data, response) = try await URLSession.shared.data(from: url)

                guard let response = response as? HTTPURLResponse,
                      response.statusCode >= 200 && response.statusCode <= 299 else {
                    throw UserError.invalidStatusCode
                }
                
                let decoder = JSONDecoder()
                guard let users = try? decoder.decode([User].self, from: data) else {
                    throw UserError.failedToDecode
                }
                self.users = users
                
            } catch {
                throw UserError.custom(error: error)
            }
        }
        
    }
}

extension UsersViewModel {
    enum UserError: LocalizedError {
        case custom(error: Error)
        case failedToDecode
        case invalidStatusCode
        
        var errorDescription: String? {
            switch self {
            case .failedToDecode:
                return "Failed to decode response"
            case .custom(let error):
                return error.localizedDescription
            case .invalidStatusCode:
                return "Invalid Status code isn't within a valid range"
            }
        }
    }
}
