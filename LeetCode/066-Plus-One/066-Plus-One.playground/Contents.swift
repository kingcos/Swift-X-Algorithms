import UIKit

class Solution_1 {
    // 12 ms
    func plusOne(_ digits: [Int]) -> [Int] {
        guard let last = digits.last else { fatalError("digits is empty.") }
        var digits = digits
        
        if last == 9 {
            digits[digits.count-1] = 10
            for i in 1...digits.count {
                if digits[digits.count-i] > 9 {
                    digits[digits.count-i] = 0
                    if digits.count - i - 1 >= 0 {
                        digits[digits.count-i-1] += 1
                    } else {
                        digits.insert(1, at: 0)
                    }
                } else {
                    if i == 1 {
                        digits[digits.count-i] += 1
                    }
                    break
                }
            }
        } else {
            digits[digits.count-1] += 1
        }
        return digits
    }
}

class Solution_2 {
    // 8 ms
    func plusOne(_ digits: [Int]) -> [Int] {
        guard !digits.isEmpty else { return [] }
        
        var digits = digits
        
        digits[digits.count - 1] += 1
        for t in digits.enumerated().reversed() {
            if digits[t.offset] == 10 {
                digits[t.offset] = 0
                if t.offset == 0 {
                    digits.insert(1, at: 0)
                } else {
                    digits[t.offset - 1] += 1
                }
            }
        }
        
        return digits
    }
}
