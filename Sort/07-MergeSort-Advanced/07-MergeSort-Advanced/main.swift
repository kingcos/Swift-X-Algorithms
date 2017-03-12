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
    
//    guard arr.count > 1 else { return arr }
    // 当数组大小小于等于 15 时，切换为插入排序
    if arr.count <= 15 {
        return insertionSortAdvanced(arr, isNotOrdered)
    }
    
    let mid = arr.count / 2
    
    let lArr = mergeSortAdvanced(Array(arr[0..<mid]), isNotOrdered)
    let rArr = mergeSortAdvanced(Array(arr[mid..<arr.count]), isNotOrdered)
    
    // 当第一个数组的最后一个元素与第二个数组的首个元素已符合顺序时，不需要归并
    if let lLast = lArr.last, let rFirst = rArr.first {
        if isNotOrdered(lLast, rFirst) {
            return [T]()
        }
    }
    return merge(lArr, rArr, isNotOrdered)
}

func insertionSortAdvanced<T>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    var arr = arr
    
    for i in 0..<arr.count {
        // 保存一份当前值
        let e = arr[i]
        var j = i
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        while j > 0 && isNotOrdered(e, arr[j - 1]) {
            arr[j] = arr[j - 1]
            j -= 1
        }
        arr[j] = e
    }
    
    return arr
}

TestHelper.checkSortAlgorithm(mergeSortAdvanced)
TestHelper.checkSortAlgorithmWithNearlyOrderedArray(mergeSortAdvanced)
