import UIKit

class Solution_1 {
    // 80 ms
    func isPalindrome(_ x: Int) -> Bool {
        var x = x
        guard x >= 0 else { return false }
        
        var digits = [Int]()
        while x != 0 {
            digits.append(x % 10)
            x /= 10
        }
        
        return digits == digits.reversed()
    }
}

class Solution_2 {
    // 56 ms
    func isPalindrome(_ x: Int) -> Bool {
        var y = x
        guard x >= 0 else { return false }
        
        var result = 0
        while y != 0 {
            result *= 10
            result += y % 10
            y /= 10
        }
        
        return result == x
    }
}

class Solution_3 {
    // 56 ms
    func isPalindrome(_ x: Int) -> Bool {
        var x = x
        guard x >= 0,
            x % 10 != 0 || x == 0 else { return false }
        
        var result = 0
        while x > result {
            result = result * 10 + x % 10
            x /= 10
        }
        
        return result == x || result / 10 == x
    }
}
