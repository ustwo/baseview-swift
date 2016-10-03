//
//  BaseViewTests.swift
//  BaseViewTests
//
//  Created by Shagun Madhikarmi on 15/06/2015.
//  Copyright (c) 2015 ustwo. All rights reserved.
//

import XCTest

@testable import BaseView

class BaseViewTests: XCTestCase {


    // MARK: - Tests

    func testAwakeFromNib() {

        // Given

        let testView = Bundle.main.loadNibNamed("BaseView", owner: self, options: nil)?.last as? BaseView

        // Test

        XCTAssertNotNil(testView)
        XCTAssertTrue(testView!.isSetup)
    }

    func testInitFromCoder() {

        // Given

        let testView = BaseView()

        // When

        let archive = NSKeyedArchiver.archivedData(withRootObject: testView)
        let result = NSKeyedUnarchiver.unarchiveObject(with: archive) as? BaseView

        // Test

        XCTAssertNotNil(result)
    }

    func testInitWithFrame() {
        // Given

        let testView = BaseView(frame: CGRect.zero)

        // Then

        XCTAssertNotNil(testView)
        XCTAssertTrue(testView.isSetup)
    }
}
