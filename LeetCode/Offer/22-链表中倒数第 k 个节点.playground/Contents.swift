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
    // 8 ms, 13.6 MB
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        assert(k > 0, "k is illegal.")
        
        var head = head
        var queue = [ListNode]()
        
        while head != nil {
            queue.append(head!)
            if queue.count > k {
                queue.remove(at: 0)
            }
            head = head?.next
        }
        
        assert(k == queue.count, "k is out of bounds.")
        
        return queue.first
    }
}

class Solution_2 {
    // 8 ms, 13.6 MB
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        assert(k > 0, "k is illegal.")
        
        var k = k
        var slowPtr = head
        var fastPtr = head
        
        while fastPtr != nil && k > 0 {
            fastPtr = fastPtr?.next
            k -= 1
        }
        
        assert(k == 0, "k is out of bounds.")
        
        while fastPtr != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next
        }
        
        return slowPtr
    }
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(4)
head.next?.next?.next?.next = ListNode(5)

print(Solution_1().getKthFromEnd(head, 2)!.val)
print(Solution_1().getKthFromEnd(head, 2)!.next!.val)

print(Solution_2().getKthFromEnd(head, 2)!.val)
print(Solution_2().getKthFromEnd(head, 2)!.next!.val)
