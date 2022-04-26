//
//  OnboardingContentTests.swift
//  NewsAPITests
//
//  Created by Tunde on 01/04/2021.
//

import XCTest
@testable import NewsAPI

class OnboardingContentTests: XCTestCase {
    
    private var plistManager: PlistManagerImpl!
    
    override func setUpWithError() throws {
        plistManager = PlistManagerImpl()
    }

    override func tearDownWithError() throws {
        plistManager = nil
    }
    
    func test_successfull_onboarding_content_decoding() {
        let contentManager = OnboardingContentManagerImpl(manager: plistManager)
        XCTAssertEqual(contentManager.items.count, 3)
    }
    
    func test_successfull_onboarding_content_limit() {
        let contentManager = OnboardingContentManagerImpl(manager: plistManager)
        XCTAssertEqual(contentManager.limit, 2)
    }
    
    func test_unsuccessfull_onboarding_content_decoding() {
        let mock = OnboardingContentMockImpl(manager: plistManager)
        XCTAssertEqual(mock.items.count, 0)
    }
    
    func test_unsuccessfull_onboarding_content_limit() {
        let mock = OnboardingContentMockImpl(manager: plistManager)
        XCTAssertLessThan(mock.limit, 0)
    }
}
