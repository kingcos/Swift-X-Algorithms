import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution_1 {
    // 4 ms, 14 MB
    func getDecimalValue(_ head: ListNode?) -> Int {
        var head = head
        var arr = [Int]()
        
        while head != nil {
            arr.append(head!.val)
            head = head?.next
        }
        
        var result = 0
        
        for (index, item) in arr.reversed().enumerated() {
            result += item * Int(pow(2, Float(index)))
        }
        
        return result
    }
}

class Solution_2 {
    // 4 ms, 13.4 MB
    func getDecimalValue(_ head: ListNode?) -> Int {
        var head = head
        var result = 0
        
        while head != nil {
            result = result * 2 + head!.val
            head = head?.next
        }
        
        return result
    }
}

let head = ListNode(1)
head.next = ListNode(0)
head.next?.next = ListNode(1)

print(Solution_1().getDecimalValue(head))
print(Solution_2().getDecimalValue(head))
