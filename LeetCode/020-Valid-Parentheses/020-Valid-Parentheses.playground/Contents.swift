import UIKit

class Solution {
    // 16 ms
    func isValid(_ s: String) -> Bool {
        guard !s.isEmpty else { return true }
        
        let dict: [Character : Character] = [
            ")" : "(",
            "]" : "[",
            "}" : "{"
        ]
        let openedBrackets: [Character] = ["(", "[", "{"]
        let closedBrackets: [Character] = [")", "]", "}"]
        
        var stack = [Character]()
        for c in [Character](s) {
            if openedBrackets.contains(c) {
                stack.append(c)
            }
            if closedBrackets.contains(c) {
                if let last = stack.popLast(), last == dict[c] {
                    continue
                } else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
