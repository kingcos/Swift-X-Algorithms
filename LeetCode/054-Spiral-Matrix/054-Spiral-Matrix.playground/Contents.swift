import UIKit

class Solution {
    // 4 ms
    func externalElements(_ matrix: [[Int]], _ startX: Int, _ startY: Int, _ m: Int, _ n: Int) -> [Int] {
        guard !matrix.isEmpty else { return [] }
        guard !matrix[0].isEmpty else { return [] }
        guard startX >= 0 && startY >= 0 && m > 0 && n > 0 else {
            return []
        }
        
        var result = matrix[startX][startY..<m+startY]
        
        if n > 1 {
            result.append(contentsOf: (startX+1..<n+startX).map { matrix[$0][m+startY-1] })
        }
        
        if m > 1 && n > 1 {
            result.append(contentsOf: (startY+1..<m+startY-1).reversed().map { matrix[n+startX-1][$0] })
        }
        
        if m > 1 {
            result.append(contentsOf: (startX+1..<n+startX).reversed().map { matrix[$0][startY] })
        }
        
        result.append(contentsOf: externalElements(matrix, startX+1, startY+1, m-2, n-2))
        
        return [Int](result)
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty else { return [] }
        guard !matrix[0].isEmpty else { return [] }
        return externalElements(matrix, 0, 0, matrix[0].count, matrix.count)
    }
}
