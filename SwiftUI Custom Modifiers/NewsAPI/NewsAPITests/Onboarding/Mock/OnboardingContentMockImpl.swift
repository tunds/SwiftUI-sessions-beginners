//
//  OnboardingContentMockImpl.swift
//  NewsAPITests
//
//  Created by Tunde on 02/04/2021.
//

import Foundation
@testable import NewsAPI

class OnboardingContentMockImpl: OnboardingContentManager {
    
    var limit: Int {
        return items.count - 1
    }
    
    var items: [OnboardingItem]
    
    required init(manager: PlistManager) {
        self.items = manager.convert(plist: "FruitLoops")
    }
}
