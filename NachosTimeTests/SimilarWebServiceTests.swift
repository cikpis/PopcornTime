//
//  SimilarWebServiceTests.swift
//  NachosTime
//
//  Created by Carmelo Gallo on 2019-03-10.
//  Copyright © 2019 Carmelo Gallo. All rights reserved.
//

import XCTest
@testable import NachosTime

class SimilarWebServiceTests: XCTestCase {

    func testGetSimilar() {
        let expectation = self.expectation(description: "\(#function)\(#line)")
        Manager.webService.similar.get(of: 439079, at: 1) { result in
            XCTAssertTrue(result.isSuccess)
            XCTAssertNotNil(result.value)
            expectation.fulfill()
        }
        let result = XCTWaiter.wait(for: [expectation], timeout: 5)
        XCTAssertTrue(result == .completed)
    }

}
