//
//  NetworkError.swift
//  AlertsInSwiftUI
//
//  Created by Tunde Adegoroye on 23/03/2022.
//

import Foundation

enum NetworkError {
    case badRequest
    case failedToDecode
}

extension NetworkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .badRequest:
            return "The request failed"
        case .failedToDecode:
            return "Failed to decode"
        }
    }
    
    var message: String {
        
        switch self {
        case .badRequest:
            return "Seems like something went horribly wrong"
        case .failedToDecode:
            return "Seems like we failed to decode the response"
        }
    }
    
    var suggestion: String {
        "Try sending the request again"
    }
}
