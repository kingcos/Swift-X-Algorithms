//
//  main.swift
//  13-HeapSort
//
//  Created by 买明 on 21/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

func heapSort<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: @escaping (T, T) -> Bool) -> Array<T> {
    var heap = Heap(arr.count, isNotOrdered)
    for i in arr {
        heap.insert(i)
    }
    var result = Array<T>()
    for _ in arr {
        result.append(heap.extractExtremum())
    }
    
    return result
}

TestHelper.checkSortAlgorithm(heapSort)
TestHelper.checkSortAlgorithmWithNearlyOrderedArray(heapSort)
TestHelper.checkSortAlgorithmWithArrayInGivenRange(heapSort, 1, 10)
