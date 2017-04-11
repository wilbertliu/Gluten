//
//  GlutenTests.swift
//  GlutenTests
//
//  Created by Wilbert Liu on 4/11/17.
//  Copyright © 2017 Wilbert Liu. All rights reserved.
//

import XCTest
@testable import Gluten

class GlutenTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testWithGluten() {
        let view = TestView()
        XCTAssertEqual(view.subviews.count, 1)
    }

    func testWithoutGluten() {
        let view = TestView(frame: CGRect.zero)
        XCTAssertEqual(view.subviews.count, 0)
    }

    func testWrongView() {
        let view = TestWrongView()
        XCTAssertEqual(view.subviews.count, 0)
    }
}
