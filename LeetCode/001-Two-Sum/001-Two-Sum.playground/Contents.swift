import UIKit

class Solution_1 {
    // 688 ms
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

class Solution_2 {
    // 40 ms
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int : Int]()
        
        for i in 0..<nums.count {
            let temp = target - nums[i]
            
            if let index = dict[temp] {
                return [index, i]
            }
            
            dict[nums[i]] = i
        }
        return []
    }
}
