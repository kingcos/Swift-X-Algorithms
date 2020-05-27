import UIKit

class Solution {
    // 4 ms
    func fib(_ N: Int) -> Int {
        guard N > 1 else {
            return N
        }
        
        var first = 0
        var second = 1
        
        for _ in 0..<N-1 {
            let result = first + second
            first = second
            second = result
        }
        
        return second
    }
}
