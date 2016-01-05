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
        let testView = NSBundle.mainBundle().loadNibNamed("View", owner: self, options: nil).last as? View
        
        // Test
        XCTAssertNotNil(testView)
    }
    
    func testInitFromCoder() {
        // Given
        let testView = View()
        
        // When
        let archive = NSKeyedArchiver.archivedDataWithRootObject(testView)
        let result = NSKeyedUnarchiver.unarchiveObjectWithData(archive) as? View
        
        // Test
        XCTAssertNotNil(result)
    }
    
    func testInitWithFrame() {
        // Given
        let viewController = ViewController()
        
        // When
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        // Test
        XCTAssertNotNil(viewController.view)
    }
    
}
