//
//  StackTests.swift
//  
//
//  Created by Александр Харин on /25/23.
//

import XCTest
@testable import Stack

final class StackTests: XCTestCase {
    
    var stack: Stack<Int>!
    
    override func setUpWithError() throws {
        stack = Stack()
    }

    override func tearDownWithError() throws {
        stack = nil
    }
    
    func testPush() {
        // Given
        XCTAssertEqual(stack.size, 0)
        // When
        stack.push(13)
        // Then
        XCTAssertEqual(stack.size, 1)
        
        // Given
        // When
        stack.push(11)
        // Then
        XCTAssertEqual(stack.size, 2)
    }

}
