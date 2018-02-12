//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func twoSum_1(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:]
        var result: [Int] = []
        
        for i in 0 ..< nums.count {
            let temp = target - nums[i]
            
            if let index = dict[temp] {
                result.append(i)
                result.append(index)
                
                return result
            }
            
            dict[nums[i]] = i
        }
        
        return result
    }
    
    func twoSum_2(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0 ..< nums.count {
            for j in i + 1 ..< nums.count {
                if (nums[j] == target - nums[i]) {
                    return [i, j]
                }
            }
        }
        
        return []
    }
}
