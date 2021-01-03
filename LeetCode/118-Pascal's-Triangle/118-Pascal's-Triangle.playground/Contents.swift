import UIKit

class Solution {
    // 4 ms
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows <= 0 { return [] }
        if numRows == 1 { return [[1]] }
        if numRows == 2 { return [[1], [1, 1]] }
        
        var last = generate(numRows - 1)
        var new = (1..<numRows-1).map { v -> Int in
            return last.last![v] + last.last![v-1]
        }
        
        new.insert(1, at: 0)
        new.append(1)
        
        last.append(new)
        return last
    }
}
