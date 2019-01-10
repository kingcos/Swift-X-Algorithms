import UIKit

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
    // 40 ms
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var head = head
        let node = ListNode(0)
        node.next = head
        
        while head?.next != nil {
            var temp = head
            temp = temp?.next
            if temp?.val == head?.val {
                if temp?.next != nil {
                    head?.next = temp?.next
                } else {
                    head?.next = nil
                }
            } else {
                head = head?.next
            }
        }
        return node.next
    }
}
