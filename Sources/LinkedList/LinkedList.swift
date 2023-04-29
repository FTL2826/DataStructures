//
//  LinkedList.swift
//  
//
//  Created by Александр Харин on /304/23.
//

final public class LinkedList<T>: Sequence {
    typealias Node = LinkedListNode<T>
    
    private var head: Node?
    private var tail: Node?
    
    // O(1)
    var first: Node? {
        head
    }
    
    // O(1)
    var last: Node? {
        tail
    }
    var count: Int = 0
    
    // O(n)
    var print: String {
        var strOutput = "["
        guard var node = head else { return "[]" }
        while let next = node.next {
            strOutput += "\(node.value), "
            node = next
        }
        strOutput += "\(node.value)"
        return strOutput + "]"
    }
    
    // O(1)
    func append(_ value: T) {
        count += 1
        let newNode = Node(value)
        if let lastNode = tail {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }
    
    // O(index)
    func node(atIndex index: Int) -> Node? {
        guard index < count else { return nil }
        if index == 0 {
            return head
        } else if index == count - 1 {
            return tail
        } else {
            var node = head?.next
            var curIndex = 1
            while index > curIndex {
                node = node?.next
                curIndex += 1
            }
            return node
        }
    }
    
    // travers O(n)
    public func makeIterator() -> LinkedListIterator<T> {
        LinkedListIterator<T>(start: head)
    }
    
}
