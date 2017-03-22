//
//  Heap.swift
//  01-Heap
//
//  Created by 买明 on 21/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

public struct Heap<T>: CustomStringConvertible {
    
    var isOrdered: (T, T) -> Bool
    var capacity: Int
    
    var elements: Array<T>
    
    var count: Int {
        return elements.count
    }
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    public var description: String {
        return elements.description
    }
    
    init(_ capacity: Int, _ isOrdered: @escaping (T, T) -> Bool) {
        self.capacity = capacity
        self.isOrdered = isOrdered
        self.elements = Array<T>()
    }
    
    private mutating func shiftUp(_ index: Int) {
        var index = index
        while index > 0 && isOrdered(elements[index], elements[(index - 1) / 2]) {
            swap(&elements[index], &elements[(index - 1) / 2])
            index = (index - 1) / 2
        }
    }
    
    private mutating func shiftDown(_ index: Int) {
        var index = index
        while 2 * (index + 1) <= count {
            var j = 2 * index + 1
            if j + 1 < count && isOrdered(elements[j + 1], elements[j]) {
                j += 1
            }
            
            if isOrdered(elements[j], elements[index]) {
                swap(&elements[j], &elements[index])
            }
            index = j
        }
    }
    
    mutating func insert(_ element: T) {
        assert(count + 1 <= capacity, "Heap out of capacity.")
        elements.append(element)
        shiftUp(count - 1)
    }
    
    mutating func extractExtremum() -> T {
        assert(!isEmpty, "Heap is Empty")
        let returnElement = elements[0]
        if count > 1 {
            swap(&elements[0], &elements[count - 1])
        }
        elements.removeLast()
        shiftDown(0)
        return returnElement
    }
    
    public func getExtremum() -> T {
        assert(!isEmpty, "Heap is Empty")
        return elements[0]
    }
    
}
