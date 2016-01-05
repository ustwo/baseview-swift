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
    
    
    // MARK: - Properties
    
    var viewController: ViewController!
    
    
    // MARK: - Setup/Teardown
    
    override func setUp() {
        super.setUp()
        
        viewController = ViewController()
        
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        // Test and Load the View at the Same Time!
        XCTAssertNotNil(viewController.view)
    }
    
    
    // MARK: - Tests
    
    func testLoad() {
        XCTAssertTrue(true)
    }
    
}
