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
    // 344 ms, 16.7 MB
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }
        
        var hA = headA
        var hB = headB
        
        while hA !== hB {
            hA = hA == nil ? headB : hA?.next
            hB = hB == nil ? headA : hB?.next
        }
        
        return hA
    }
}

let headA = ListNode(1)
headA.next = ListNode(2)
headA.next?.next = ListNode(3)

let headB = ListNode(2)
headB.next = headA.next

print(Solution().getIntersectionNode(headA, headB) === headA.next)
