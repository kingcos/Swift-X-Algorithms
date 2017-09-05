//
//  main.swift
//  01-BinarySearch
//
//  Created by kingcos on 05/09/2017.
//  Copyright © 2017 kingcos. All rights reserved.
//

import Foundation

func binarySearchIteratively<T: Comparable>(_ target: T, in arr: [T]) -> Int? {
    // 下标下限
    var lowerBound = 0
    // 下标上限
    var upperBound = arr.count - 1
    
    while lowerBound <= upperBound {
        let middle = lowerBound + (upperBound - lowerBound) / 2
        
        if arr[middle] == target {
            return middle
        }
        
        if target < arr[middle] {
            upperBound = middle - 1
        } else {
            lowerBound = middle + 1
        }
    }
    
    return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
print(binarySearchIteratively(67, in: numbers) ?? -1)
print(binarySearchIteratively(24, in: numbers) ?? -1)
