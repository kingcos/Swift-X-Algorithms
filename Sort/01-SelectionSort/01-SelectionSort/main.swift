//
//  main.swift
//  01-SelectionSort
//
//  Created by 买明 on 10/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//

import Foundation

func selectionSort<T>(_ arr: inout Array<T>,
                      _ isNotOrdered: (T, T) -> Bool) {
    // 依次查找极值
    for i in 0..<arr.count {
        // 记录极值的下标
        var index = i
        
        // 查找后续极值下标
        for j in i + 1..<arr.count {
            // 更新极值下标
            if isNotOrdered(arr[j], arr[index]) {
                index = j
            }
        }
        
        // 交换位置
        arr.swapAt(i, index)
    }
}

TestHelper.checkSortAlgorithm(selectionSort)
TestHelper.checkSortAlgorithm(selectionSort, 10000)
