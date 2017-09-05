//
//  main.swift
//  02-BinarySearch-Recursively
//
//  Created by kingcos on 05/09/2017.
//  Copyright © 2017 kingcos. All rights reserved.
//

import Foundation

func binarySearchRecursively<T: Comparable>(_ taget: T,
                                            in arr: [T],
                                            of range: Range<Int>) -> Int? {
    guard range.lowerBound < range.upperBound else { return nil }
    
    let middle = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    if taget == arr[middle] {
        return middle
    }
    
    if taget < arr[middle] {
        return binarySearchRecursively(taget, in: arr, of: range.lowerBound ..< middle)
    } else {
        return binarySearchRecursively(taget, in: arr, of: middle + 1 ..< range.upperBound)
    }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
print(binarySearchRecursively(67, in: numbers, of: 0 ..< numbers.count) ?? -1)
print(binarySearchRecursively(24, in: numbers, of: 0 ..< numbers.count) ?? -1)
