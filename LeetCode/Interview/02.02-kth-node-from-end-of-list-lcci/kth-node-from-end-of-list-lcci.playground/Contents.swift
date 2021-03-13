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
    // 8 ms, 13.4 MB
    func kthToLast(_ head: ListNode?, _ k: Int) -> Int {
        assert(head != nil, "head is illegal.")
        
        var head = head
        var stack = [ListNode]()
        
        while head != nil {
            stack.append(head!)
            if stack.count > k {
                stack.remove(at: 0)
            }
            head = head?.next
        }
        
        return stack.first!.val
    }
}

class Solution_2 {
    // 8 ms, 13.4 MB
    func kthToLast(_ head: ListNode?, _ k: Int) -> Int {
        assert(head != nil, "head is illegal.")
        
        var k = k
        var slowPtr = head
        var fastPtr = head
        
        while fastPtr != nil && k > 0 {
            fastPtr = fastPtr?.next
            k -= 1
        }
        
        while fastPtr != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next
        }
        
        return slowPtr!.val
    }
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(4)
head.next?.next?.next?.next = ListNode(5)

print(Solution_1().kthToLast(head, 2))
print(Solution_1().kthToLast(head, 2))

print(Solution_2().kthToLast(head, 2))
print(Solution_2().kthToLast(head, 2))
