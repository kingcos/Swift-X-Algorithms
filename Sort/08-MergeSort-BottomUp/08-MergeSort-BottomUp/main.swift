//
//  main.swift
//  08-MergeSort-BottomUp
//
//  Created by 买明 on 13/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

func mergeSortBottomUp<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    // [l, mid) & [mid, r)
    func merge<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ mid: Int, _ r: Int) {
        let tmpArr = arr
        var leftIndex = l, rightIndex = mid
        
        for i in 0..<r - l {
            if leftIndex >= mid {
                arr[i + l] = tmpArr[rightIndex]
                rightIndex += 1
            } else if rightIndex >= r {
                arr[i + l] = tmpArr[leftIndex]
                leftIndex += 1
            } else if isNotOrdered(tmpArr[leftIndex], tmpArr[rightIndex]) {
                arr[i + l] = tmpArr[leftIndex]
                leftIndex += 1
            } else {
                arr[i + l] = tmpArr[rightIndex]
                rightIndex += 1
            }
        }
    }
    
    var arr = arr
    
    var size = 1
    while size <= arr.count {
        var i = 0
        while i + size < arr.count {
            merge(&arr, isNotOrdered, i, size + i, min(i + size + size, arr.count))
            i += (size + size)
        }
        size += size
    }
    
    return arr
}

func mergeSortBottomUpWithInsertionSort<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    // [l, mid) & [mid, r)
    func merge<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ mid: Int, _ r: Int) {
        if r - l <= 15 {
            arr = insertionSortAdvanced(arr, isNotOrdered, l, r)
            return
        }
        
        let tmpArr = arr
        var leftIndex = l, rightIndex = mid
        
        for i in 0..<r - l {
            if leftIndex >= mid {
                arr[i + l] = tmpArr[rightIndex]
                rightIndex += 1
            } else if rightIndex >= r {
                arr[i + l] = tmpArr[leftIndex]
                leftIndex += 1
            } else if isNotOrdered(tmpArr[leftIndex], tmpArr[rightIndex]) {
                arr[i + l] = tmpArr[leftIndex]
                leftIndex += 1
            } else {
                arr[i + l] = tmpArr[rightIndex]
                rightIndex += 1
            }
        }
    }
    
    var arr = arr
    
    var size = 1
    while size <= arr.count {
        var i = 0
        while i + size < arr.count {
            merge(&arr, isNotOrdered, i, size + i, min(i + size + size, arr.count))
            i += (size + size)
        }
        size += size
    }
    
    return arr
}

func insertionSortAdvanced<T>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ r: Int) -> Array<T> {
    var arr = arr
    
    for i in l..<r {
        // 保存一份当前值
        let e = arr[i]
        var j = i
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        while j > l && isNotOrdered(e, arr[j - 1]) {
            arr[j] = arr[j - 1]
            j -= 1
        }
        arr[j] = e
    }
    
    return arr
}

TestHelper.checkSortAlgorithm(mergeSortBottomUp)
TestHelper.checkSortAlgorithmWithNearlyOrderedArray(mergeSortBottomUp)

TestHelper.checkSortAlgorithm(mergeSortBottomUpWithInsertionSort)
TestHelper.checkSortAlgorithmWithNearlyOrderedArray(mergeSortBottomUpWithInsertionSort)
