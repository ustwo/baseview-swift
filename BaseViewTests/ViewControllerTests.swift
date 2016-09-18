//
//  ViewControllerTests.swift
//  BaseView
//
//  Created by Shagun Madhikarmi on 06/01/2016.
//  Copyright © 2016 ustwo. All rights reserved.
//

import XCTest

@testable import BaseView

class ViewControllerTests: XCTestCase {
    

    // MARK: - Tests

    func testViewControllerLoadView() {
        // Given
        let viewController = ViewController()

        // When
        UIApplication.shared.keyWindow!.rootViewController = viewController

        // Test
        XCTAssertNotNil(viewController.view)
    }
}
