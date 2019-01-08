import UIKit

class Solution_1 {
    // 92 ms
    func addBinary(_ a: String, _ b: String) -> String {
        let aCount = a.filter { String($0) == "0" || String($0) == "1" }.count
        let bCount = b.filter { String($0) == "0" || String($0) == "1" }.count
        guard aCount == a.count && bCount == b.count else { fatalError("a or b is not a binary.") }
        var a = a, b = b
        while a.count != b.count {
            if a.count > b.count {
                b.insert("0", at: b.startIndex)
            } else {
                a.insert("0", at: a.startIndex)
            }
        }
        
        a.insert("0", at: a.startIndex)
        b.insert("0", at: b.startIndex)
        
        var result = ""
        for i in 0..<a.count {
            let first = Int(String(a[a.index(a.startIndex, offsetBy: a.count-i-1)]))!
            let second = Int(String(b[a.index(a.startIndex, offsetBy: a.count-i-1)]))!
            result = "\((first + second) % 2)" + result
            if i != a.count - 1 {
                if first + second >= 2 {
                    a.replaceSubrange(a.index(a.startIndex, offsetBy: a.count-i-2)..<a.index(a.startIndex, offsetBy: a.count-i-1),
                                      with: "\(Int(String(a[a.index(a.startIndex, offsetBy: a.count-i-2)]))! + 1)")
                }
            }
        }
        if result.starts(with: "0") {
            result.removeFirst()
        }
        return result
    }
}

class Solution_2 {
    // 32 ms
    func addBinary(_ a: String, _ b: String) -> String {
        guard a.count >= b.count else { return addBinary(b, a) }
        var a = [Character](a).map { Int(String($0))! }
        var b = [Character](b).map { Int(String($0))! }
        
        var temp = 0
        var sum = 0
        for i in 1...a.count {
            if i > b.count {
                b.insert(0, at: 0)
            }
            sum = a[a.count-i] + b[b.count-i] + temp
            a[a.count-i] = sum % 2
            temp = sum / 2
        }
        if temp != 0 {
            a.insert(temp, at: 0)
        }
        return String(a.map { Character("\($0)") })
    }
}
