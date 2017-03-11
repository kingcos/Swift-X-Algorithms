//
//  main.swift
//  04-BubbleSort
//
//  Created by 买明 on 11/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

func bubbleSort<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool) {
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1 {
            // 极值沉底
            if isNotOrdered(arr[j + 1], arr[j]) {
                swap(&arr[j + 1], &arr[j])
            }
        }
    }
}

TestHelper.checkSortAlgorithm(bubbleSort)
TestHelper.checkSortAlgorithm(bubbleSort, 10000)
