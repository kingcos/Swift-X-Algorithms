//
//  main.swift
//  05-ShellSort
//
//  Created by 买明 on 11/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

func shellSort<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool) {
    var h = 1
    while h < arr.count / 3 {
        h = 3 * h + 1
    }
    
    while h >= 1 {
        // Insertion Sort Advanced
        for i in h..<arr.count {
            // 保存一份当前值
            let e = arr[i]
            var j = i
            // 将后面的数与前面已排好序的序列进行逐个倒序比较
            while j >= h && isNotOrdered(e, arr[j - 1]) {
                arr[j] = arr[j - h]
                j -= 1
            }
            arr[j] = e
        }
        h /= 3
    }
}

TestHelper.checkSortAlgorithm(shellSort)
TestHelper.checkSortAlgorithm(shellSort, 10000)
