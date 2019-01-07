import UIKit

class Solution {
    // 16 ms
    func lengthOfLastWord(_ s: String) -> Int {
        let s = s.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        guard let index = s.lastIndex(of: " ") else { return s.count }
        return s[index...].count - 1
    }
}
