//
//  main.swift
//  01-Heap
//
//  Created by 买明 on 21/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

// Build a Max Heap with Int vars & 100 capacity
var myMaxHeap = Heap<Int>(100, >)

// Test insert(:) func.
myMaxHeap.insert(1)
myMaxHeap.insert(2)
myMaxHeap.insert(3)
myMaxHeap.insert(4)
myMaxHeap.insert(5)

print(myMaxHeap)

// Test extractExtremum() func.
print(myMaxHeap.extractExtremum())
print(myMaxHeap)

print(myMaxHeap.extractExtremum())
print(myMaxHeap)

print(myMaxHeap.extractExtremum())
print(myMaxHeap)
