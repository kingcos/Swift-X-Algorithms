import UIKit

class Solution {
//    func l2r(_ line: [Int]) -> [Int] {
//
//    }
//
//    func t2b() {
//
//    }
//
//    func r2l() {
//
//    }
//
//    func b2t() {
//
//    }
    
    private func externalElements(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty || !matrix[0].isEmpty else { return [] }
        
        let m = matrix[0].count
        let n = matrix.count
        
        var result = matrix[0][0..<m]
        
        if n > 1 {
            print(m-1)
            result.append(contentsOf: matrix[m-1][1..<n-1])
        }
        print("----")
        print(result)
        print("----")

//        if m > 2 {
//            result.append(contentsOf: matrix[n-1][1..<m-1].reversed())
//        }
//

//        if n > 1 {
//            print(matrix[1..<n-1][0].reversed())
//            result.append(contentsOf: matrix[1..<n-1][0].reversed())
//        }
//
//        print(result)
        

        return [Int](result)
    }
    
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty else { return [] }
        guard !matrix[0].isEmpty else { return [] }
        
        let m = matrix.count
        let n = matrix[0].count
        
        return externalElements(matrix)
    }
}

print(Solution().spiralOrder([
    [ 1, 2, 3 ],
    [ 4, 5, 6 ],
    [ 7, 8, 9 ]
    ])
)
