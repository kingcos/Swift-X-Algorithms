import UIKit

class Solution_1 {
    // 20 ms
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard nums1.count >= m + n else { fatalError("nums1 length is not enough.") }
        nums1 = (Array(nums1[0..<m]) + nums2).sorted()
    }
}

class Solution_2 {
    // 16 ms
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        guard nums1.count >= m + n else { fatalError("nums1 length is not enough.") }
        var p1 = 0
        var p2 = 0
        var all = [Int]()
        for _ in 0..<m+n {
            if p1 >= m {
                all.append(contentsOf: Array(nums2[p2...]))
                break
            }
            if p2 >= n {
                all.append(contentsOf: Array(nums1[p1...]))
                break
            }
            
            if nums1[p1] < nums2[p2] {
                all.append(nums1[p1])
                p1 += 1
            } else {
                all.append(nums2[p2])
                p2 += 1
            }
        }
        nums1 = Array(all[0..<m+n])
    }
}
