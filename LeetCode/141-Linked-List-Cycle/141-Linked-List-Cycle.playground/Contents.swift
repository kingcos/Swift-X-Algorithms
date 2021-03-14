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

class Solution {
    // 84 ms, 15.2 MB
    func hasCycle(_ head: ListNode?) -> Bool {
        var slowPtr = head
        var fastPtr = head?.next
        
        while fastPtr != nil {
            if slowPtr === fastPtr {
                return true
            }
            
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        
        return false
    }
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = head.next

print(Solution().hasCycle(head))
