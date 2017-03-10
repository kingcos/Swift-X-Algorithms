//
//  main.swift
//  02-InsertionSort
//
//  Created by 买明 on 10/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

func insertionSort<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool) {
    for i in 0..<arr.count {
        var j = i
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        while j > 0 && isNotOrdered(arr[j], arr[j - 1]) {
            swap(&arr[j], &arr[j - 1])
            j -= 1
        }
    }
}

TestHelper.checkSortAlgorithm(insertionSort)
TestHelper.checkSortAlgorithm(insertionSort, 10000)
