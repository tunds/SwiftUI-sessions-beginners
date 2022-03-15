//
//  PeopleViewModel.swift
//  ObservableObjectAndPublishedPropertiesSwiftUI
//
//  Created by Tunde on 15/01/2022.
//

import Foundation

final class PeopleViewModel: ObservableObject {
    
    @Published var people: [String] = []
    @Published var isLoading: Bool = false
    
    func fetchPeople() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) { [weak self] in
            self?.people = ["Tunds", "Billy", "Bob", "Aimie"]
            self?.isLoading = false
        }
    }
}
