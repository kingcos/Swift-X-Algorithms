import UIKit

class Solution {
    // 156 ms
    func pivotIndex(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { return -1 }
        
        let sum = nums.reduce(0, +)
        var leftSum = 0
        for t in nums.enumerated() {
            if leftSum * 2 == sum - t.element {
                return t.offset
            }
            leftSum += t.element
        }
        
        return -1
    }
}
