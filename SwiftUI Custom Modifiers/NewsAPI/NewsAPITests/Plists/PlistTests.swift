//
//  PlistTests.swift
//  NewsAPITests
//
//  Created by Tunde on 01/04/2021.
//

import XCTest
@testable import NewsAPI

class PlistTests: XCTestCase {
    
    private var manager: PlistManagerImpl!
    private let plist = "OnboardingContent"
    
    override func setUpWithError() throws {
        manager = PlistManagerImpl()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        manager = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_successfull_decoding_onboarding_plist() throws {
        XCTAssertEqual(manager.convert(plist: "OnboardingContent").count, 3)
    }
    
    func test_unsuccessfull_decoding_onboarding_plist() throws {
        XCTAssertEqual(manager.convert(plist: "LuckyCharms").count, 0)
    }
}
