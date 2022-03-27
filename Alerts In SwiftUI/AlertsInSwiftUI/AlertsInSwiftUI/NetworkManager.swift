//
//  NetworkManager.swift
//  AlertsInSwiftUI
//
//  Created by Tunde Adegoroye on 23/03/2022.
//

import Foundation

final class NetworkManager: ObservableObject {
    
    @Published private(set) var error: NetworkError?
    @Published var hasError: Bool = false
    
    func fetch() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.hasError = true
            self.error = Int.random(in: 1...5).isMultiple(of: 2) ? .badRequest : .failedToDecode
        }
    }
}
