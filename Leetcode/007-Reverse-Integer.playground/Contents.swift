//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0
        
        while x != 0 {
            if abs(result) > Int32.max / 10 {
                return 0
            }
            
            result = result * 10 + x % 10
            x /= 10
        }
        
        return result
    }
}
