//
//  main.swift
//  02-BinarySearch-Recursively
//
//  Created by kingcos on 05/09/2017.
//  Copyright © 2017 kingcos. All rights reserved.
//

import Foundation

func binarySearchRecursively<T: Comparable>(_ target: T,
                                            in arr: [T]) -> Int? {
    func _binarySearchRecursively<T: Comparable>(_ target: T,
                                                 in arr: [T],
                                                 of range: Range<Int>) -> Int? {
        guard range.lowerBound < range.upperBound else { return nil }
        
        let middle = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if target == arr[middle] {
            return middle
        }
        
        if target < arr[middle] {
            return _binarySearchRecursively(target, in: arr, of: range.lowerBound ..< middle)
        } else {
            return _binarySearchRecursively(target, in: arr, of: middle + 1 ..< range.upperBound)
        }
    }
    
    return _binarySearchRecursively(target, in: arr, of: 0 ..< arr.count)
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
print(binarySearchRecursively(67, in: numbers) ?? -1)
print(binarySearchRecursively(24, in: numbers) ?? -1)
