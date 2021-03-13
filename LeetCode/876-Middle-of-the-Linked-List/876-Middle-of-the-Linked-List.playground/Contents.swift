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
    // 4 ms, 13.2 MB
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowPtr = head
        var fastPtr = head?.next
        
        while fastPtr?.next != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        
        return slowPtr
    }
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(4)
head.next?.next?.next?.next = ListNode(5)

print(Solution().middleNode(head)?.val)
