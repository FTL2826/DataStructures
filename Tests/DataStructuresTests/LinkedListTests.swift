//
//  LinkedListTests.swift
//  
//
//  Created by Александр Харин on /15/23.
//

import XCTest
@testable import LinkedList

final class LinkedListTests: XCTestCase {
    
    var list = LinkedList<String>()
    
    func testAppend() {
        // Given
        XCTAssertEqual(list.count, 0)
        XCTAssertNil(list.first)
        XCTAssertNil(list.last)
        // When
        list.append("zero")
        // Then
        XCTAssertEqual(list.count, 1)
        
        // Given
        // When
        list.append("one")
        // Then
        XCTAssertEqual(list.count, 2)
        
        // Given
        // When
        list.append("two")
        // Then
        XCTAssertEqual(list.count, 3)
    }
    
    func testNodeAt() {
        testAppend()
        
        // Given
        guard let node = list.node(atIndex: 0) else { XCTFail(); return }
        // When
        // Then
        XCTAssertEqual(node.value, "zero")
        
        // Given
        guard let node = list.node(atIndex: 1) else { XCTFail(); return }
        // When
        // Then
        XCTAssertEqual(node.value, "one")
        
        // Given
        guard let node = list.node(atIndex: 2) else { XCTFail(); return }
        // When
        // Then
        XCTAssertEqual(node.value, "two")
        XCTAssert(list.node(atIndex: 0) === list.first)
        XCTAssert(list.node(atIndex: list.count - 1) === list.last)
        
        // Given
        // When
        var nilNode = list.node(atIndex: list.count)
        // Then
        XCTAssertNil(nilNode)
        
        // Given
        list.append("third")
        list.append("fourth")
        // When
        guard let node = list.node(atIndex: 3) else { XCTFail(); return }
        // Then
        XCTAssertEqual(node.value, "third")

    }
    
    func testPrint() {
        // Given
        testNodeAt()
        // When
        let printable = list.print
        // Then
        XCTAssertEqual(printable, "[zero, one, two, third, fourth]")
    }
    
    func testTraverse() {
        testPrint()
        // Given
        var pointTraverse: [String] = []
        var iteratorTraverse: [String] = []
        // When
        var p = list.first
        while p != nil {
            pointTraverse.append(p!.value)
            p = p?.next
        }
        for node in list {
            iteratorTraverse.append(node.value)
        }
        // Then
        XCTAssertEqual(pointTraverse, iteratorTraverse)
    }
    
    func testInsertAt() {
        testTraverse()
        // Given
        // When
        list.insertNode(atIndex: 0, "newHead")
        // Then
        XCTAssertEqual(list.count, 6)
        
        // Given
        // When
        list.insertNode(atIndex: list.count, "newTail")
        // Then
        XCTAssertEqual(list.count, 7)
        
        // Given
        // When
        list.insertNode(atIndex: 2, "newNode")
        // Then
        XCTAssert(list.node(atIndex: 2)!.value == "newNode")
        XCTAssertEqual(list.count, 8)
    }
    
    func testRemoveAt() {
        testInsertAt()
        // Given
        // When
        // Then
        XCTAssertNil(list.removeNode(atIndex: -1))
        
        // Given
        let zeroNode = list.node(atIndex: 0)
        // When
        list.removeNode(atIndex: 0)
        // Then
        XCTAssert(list.node(atIndex: 0) !== zeroNode)
        XCTAssertEqual(list.count, 7)
        
        // Given
        let tailNode = list.last
        // When
        list.removeNode(atIndex: list.count - 1)
        // Then
        XCTAssertEqual(list.count, 6)
        XCTAssert(tailNode !== list.last)
        
        // Given
        let nodeToDelete = list.node(atIndex: 3)
        // When
        let deletedNode = list.removeNode(atIndex: 3)
        // Then
        XCTAssert(nodeToDelete === deletedNode)
        
    }

}
