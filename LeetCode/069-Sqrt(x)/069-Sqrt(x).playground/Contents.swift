import UIKit

class Solution_1 {
    // 208 ms
    func mySqrt(_ x: Int) -> Int {
        guard x > 1 else { return x }
        for i in 0...x/2 {
            if i * i > x {
                return i - 1
            }
        }
        return x/2
    }
}

class Solution_2 {
    // 12 ms
    func mySqrt(_ x: Int) -> Int {
        return Int(sqrt(Double(x)))
    }
}

class Solution_3 {
    // 12 ms
    func mySqrt(_ x: Int) -> Int {
        guard x >= 0 else { fatalError("x is meaningless.") }
        guard x > 1 else { return x }
        
        var low = 2
        var high = x / 2
        
        while low <= high {
            let mid = (high + low) / 2
            if x / mid > mid {
                low = mid + 1
            } else if x / mid == mid {
                return mid
            } else if x / mid < mid {
                high = mid - 1
            }
        }
        
        return high
    }
}
