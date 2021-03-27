import Foundation

class Solution {
    // 4 ms, 13.7 MB
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var sum = [nums.first!]
        
        for i in 0..<nums.count-1 {
            if nums[i] < nums[i+1] {
                sum[sum.count-1] += nums[i+1]
            } else {
                sum.append(nums[i+1])
            }
        }
        
        return sum.max()!
    }
}

print(Solution().maxAscendingSum([10,20,30,40,50]))
print(Solution().maxAscendingSum([1,5,10,20,30,5,10,50]))
