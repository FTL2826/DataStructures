//
//  DequeTests.swift
//  
//
//  Created by Александр Харин on /35/23.
//

import XCTest
@testable import Deque

final class DequeTests: XCTestCase {

    var deque = Deque<Int>()
    
    func testEnqueAndDeque() {
        // Given
        XCTAssertTrue(deque.isEmpty)
        XCTAssertTrue(deque.size == 0)
        // When
        deque.enqueueFront(1)
        deque.enqueueRear(2)
        deque.enqueueFront(3)
        deque.enqueueRear(4)
        // Then
        XCTAssertFalse(deque.isEmpty)
        XCTAssertTrue(deque.size == 4)
        XCTAssert(deque.peekFront()! == 3)
        XCTAssert(deque.dequeueFront()! == 3)
        XCTAssert(deque.peekFront()! == 1)
        XCTAssert(deque.dequeueFront()! == 1)
        XCTAssert(deque.peekFront()! == 2)
        XCTAssert(deque.dequeueFront()! == 2)
        XCTAssert(deque.peekFront()! == deque.peekRear()!)
        XCTAssert(deque.dequeueRear()! == 4)
        XCTAssertTrue(deque.isEmpty)
        XCTAssertTrue(deque.size == 0)
    }

    
    func testErase() {
        // Given
        deque.enqueueFront(1)
        deque.enqueueFront(2)
        deque.enqueueFront(3)
        deque.enqueueFront(4)
        deque.enqueueRear(-1)
        deque.enqueueRear(-2)
        // When
        XCTAssertFalse(deque.isEmpty)
        // Then
        deque.erase()
        XCTAssertTrue(deque.isEmpty)
    }
    
    
}
