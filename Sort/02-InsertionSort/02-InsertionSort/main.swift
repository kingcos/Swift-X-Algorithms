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
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        for j in stride(from: i, to: 0, by: -1) {
            if isNotOrdered(arr[j], arr[j - 1]) {
                arr.swapAt(j, j - 1)
            }
        }
    }
}

TestHelper.checkSortAlgorithm(insertionSort)
TestHelper.checkSortAlgorithm(insertionSort, 10000)
