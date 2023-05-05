//
//  Stack.swift
//  
//
//  Created by Александр Харин on /25/23.
//
import LinkedList

final public class Stack<T> {
    private var list = LinkedList<T>()
    
    public var size: Int {
        list.count
    }
    public var isEmpty: Bool {
        size == 0
    }
    
    public func push(_ value: T) {
        list.append(value)
    }
    
    public func top() -> T? {
        guard let node = list.node(atIndex: size - 1) else { return nil }
        return node.value
    }
    
    public func pop() -> T? {
        guard let node = list.removeNode(atIndex: size - 1) else { return nil }
        return node.value
    }
    
    
}
