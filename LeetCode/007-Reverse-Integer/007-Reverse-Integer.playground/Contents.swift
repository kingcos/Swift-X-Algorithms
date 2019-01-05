import UIKit

class Solution {
    // 12 ms
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0
        
        while x != 0 {
            result *= 10
            result += x % 10
            x /= 10
        }
        
        guard result <= Int32.max && result >= Int32.min else { return 0 }
        
        return result
    }
}
