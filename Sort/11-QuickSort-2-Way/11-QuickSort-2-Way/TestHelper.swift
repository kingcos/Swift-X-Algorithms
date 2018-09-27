//
//  TestHelper.swift
//
//  Created by 买明 on 10/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

// 排序算法测试
struct TestHelper {
    typealias SortFuncType = (inout Array<Int>, (Int, Int) -> Bool) -> ()
    
    // 检查排序算法运行是否成功及耗时
    static func checkSortAlgorithm(_ sortFunction: (SortFuncType),
                                   _ arraySize: Int = 1000) {
        var array = generateRandomArray(arraySize)
        let startTime = clock()
        sortFunction(&array, <)
        let endTime = clock()
        if isSorted(array, <) {
            print("Duration: \(Double(endTime - startTime) / Double(CLOCKS_PER_SEC))s")
        }
    }
    
    // MARK: Private funcs
    
    // 返回随机整型数组
    private static func generateRandomArray(_ size: Int) -> Array<Int> {
        var resultArray = Array<Int>()
        
        for _ in 0..<size {
            resultArray.append(Int(arc4random_uniform(UInt32(size))))
        }
        return resultArray
    }
    
    // 判断数组是否有序
    private static func isSorted<T>(_ array: [T],
                                    _ isOrdered: (T, T) -> Bool) -> Bool {
        guard array.count > 1 else {
            return true
        }
        
        for index in 0..<array.count - 1 {
            if isOrdered(array[index + 1], array[index]) {
                return false
            }
        }
        
        return true
    }
}
