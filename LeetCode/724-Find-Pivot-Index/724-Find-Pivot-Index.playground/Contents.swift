import UIKit

class Solution {
    // 164 ms
    func pivotIndex(_ nums: [Int]) -> Int {
        let sum = nums.reduce(0, +)
        var leftSum = 0.0
        for t in nums.enumerated() {
            if leftSum == Double(sum - t.element) / 2.0 {
                return t.offset
            }
            leftSum += Double(t.element)
        }
        
        return -1
    }
}
