//
//  main.swift
//  07-MergeSort-Advanced
//
//  Created by 买明 on 12/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

func mergeSortAdvanced<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    // [0, mid) & [mid, arr.count)
    func merge<T>(_ lArr: Array<T>, _ rArr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
        var arr = lArr + rArr
        var l = 0, r = 0
        
        for i in 0..<arr.count {
            if l >= lArr.count {
                arr[i] = rArr[r]
                r += 1
            } else if r >= rArr.count {
                arr[i] = lArr[l]
                l += 1
            } else if isNotOrdered(lArr[l], rArr[r]) {
                arr[i] = lArr[l]
                l += 1
            } else {
                arr[i] = rArr[r]
                r += 1
            }
        }
        
        return arr
    }
    
    guard arr.count > 1 else { return arr }
    
    let mid = arr.count / 2
    
    let lArr = mergeSortAdvanced(Array(arr[0..<mid]), isNotOrdered)
    let rArr = mergeSortAdvanced(Array(arr[mid..<arr.count]), isNotOrdered)
    
    if let lLast = lArr.last, let rFirst = rArr.first {
        if isNotOrdered(lLast, rFirst) {
            return [T]()
        }
    }
    return merge(lArr, rArr, isNotOrdered)
}

TestHelper.checkSortAlgorithm(mergeSortAdvanced)
TestHelper.checkSortAlgorithmWithNearlyOrderedArray(mergeSortAdvanced)
