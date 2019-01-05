import UIKit

class Solution_1 {
    // 304 ms
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty,
            let firstStr = strs.first else { return "" }
        guard strs.count > 1 || firstStr.count > 1 else { return firstStr }
        
        var commonPrefix = ""
        for i in 0..<firstStr.count {
            commonPrefix.append(firstStr[firstStr.index(firstStr.startIndex, offsetBy: i)])
            if strs.filter({ $0.starts(with: commonPrefix) }).count != strs.count {
                return String(commonPrefix.dropLast())
            }
        }
        
        return commonPrefix
    }
}

class Solution_2 {
    // 32 ms
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty,
            var result = strs.first else { return "" }
        
        for str in strs.dropFirst() {
            while !str.starts(with: result) {
                result.removeLast()
            }
        }
        
        return result
    }
}
