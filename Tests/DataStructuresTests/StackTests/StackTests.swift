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
    
    func testTopAndPop() {
        // Given
        stack.push(1)
        stack.push(2)
        stack.push(3)
        // When
        var val = stack.top()
        // Then
        XCTAssertEqual(val!, 3)
        XCTAssertEqual(stack.pop()!, 3)
        
        // Given
        // When
        val = stack.top()
        // Then
        XCTAssertEqual(val!, 2)
        XCTAssertEqual(stack.pop()!, 2)
        
        // Given
        // When
        val = stack.top()
        // Then
        XCTAssertEqual(val!, 1)
        XCTAssertEqual(stack.pop()!, 1)
        XCTAssertEqual(stack.size, 0)
        XCTAssertTrue(stack.isEmpty)
    }

}
