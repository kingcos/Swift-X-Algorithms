//
//  TestHelper.swift
//
//  Created by 买明 on 10/03/2017.
//  Copyright © 2017 买明. All rights reserved.
//  Powered by https://maimieng.com from https://github.com/kingcos/Swift-X-Algorithms

import Foundation

// 排序算法测试
struct TestHelper {
    typealias SortFuncType = (Array<Int>, @escaping (Int, Int) -> Bool) -> Array<Int>
    
    // 返回随机整型数组
    static func generateRandomArray(_ size: Int) -> Array<Int> {
        var resultArray = Array<Int>()
        
        for _ in 0..<size {
            resultArray.append(Int(arc4random_uniform(UInt32(size))))
        }
        return resultArray
    }
    
    // 返回近乎有序的整型数组
    static func generateNearlyOrderedArray(_ size: Int, _ swapTimes: Int) -> Array<Int> {
        var resultArray = Array<Int>()
        
        for i in 0..<size {
            resultArray.append(i)
        }
        for _ in 0..<swapTimes {
            let randIndexA = Int(arc4random_uniform(UInt32(size)))
            let randIndexB = Int(arc4random_uniform(UInt32(size)))
            swap(&resultArray[randIndexA], &resultArray[randIndexB])
        }
        
        return resultArray
    }
    
    // 返回给定范围内的整型数组
    static func generateArrayInGivenRange(_ size: Int, _ min: Int, _ max: Int) -> Array<Int> {
        assert(max >= min, "The max value must NOT be smaller than the min value.")
        var resultArray = Array<Int>()
        
        for _ in 0..<size {
            let randomValue = Int(arc4random_uniform(UInt32(max - min + 1))) + min
            resultArray.append(randomValue)
        }
        return resultArray
    }
    
    // 判断数组是否有序
    static func isSorted<T>(_ array: [T], _ isOrdered: (T, T) -> Bool) -> Bool {
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
    
    // 检查排序算法运行是否成功及耗时
    static func checkSortAlgorithm(_ sortFunction: (SortFuncType), _ arraySize: Int = 1000) {
        let array = generateRandomArray(arraySize)
        let startTime = clock()
        let newArray = sortFunction(array, <)
        let endTime = clock()
        if TestHelper.isSorted(newArray, <) {
            print("Duration: \(Double(endTime - startTime) / Double(CLOCKS_PER_SEC))s")
        }
    }
    
    // 检查排序近乎有序数组时算法运行是否成功及耗时
    static func checkSortAlgorithmWithNearlyOrderedArray(_ sortFunction: (SortFuncType), _ arraySize: Int = 1000) {
        let array = generateNearlyOrderedArray(arraySize, 10)
        let startTime = clock()
        let newArray = sortFunction(array, <)
        let endTime = clock()
        if isSorted(newArray, <) {
            print("Duration: \(Double(endTime - startTime) / Double(CLOCKS_PER_SEC))s")
        }
    }
    
    // 检查排序给定范围内数组时算法运行是否成功及耗时
    static func checkSortAlgorithmWithArrayInGivenRange(_ sortFunction: (SortFuncType), _ min: Int, _ max: Int, _ arraySize: Int = 1000) {
        let array = generateArrayInGivenRange(arraySize, min, max)
        let startTime = clock()
        let newArray = sortFunction(array, <)
        let endTime = clock()
        if TestHelper.isSorted(newArray, <) {
            print("Duration: \(Double(endTime - startTime) / Double(CLOCKS_PER_SEC))s")
        }
    }
}
