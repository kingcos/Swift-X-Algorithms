import UIKit

class Solution {
    // 12 ms
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else { return n }
        var steps = [1, 2]
        for i in 2..<n {
            steps.append(steps[i-1] + steps[i-2])
        }
        return steps[n-1]
    }
}
