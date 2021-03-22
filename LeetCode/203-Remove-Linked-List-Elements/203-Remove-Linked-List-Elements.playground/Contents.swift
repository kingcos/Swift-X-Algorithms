import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    // 72 ms, 15.3 MB
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var newHead: ListNode? = ListNode(0, head)
        let tmpHead = newHead
        
        while newHead?.next != nil {
            if newHead!.next!.val == val {
                newHead?.next = newHead?.next?.next
            } else {
                newHead = newHead?.next
            }
        }
        
        return tmpHead?.next
    }
}

func printList(_ head: ListNode?) {
    var head = head
    
    while head != nil {
        print("\(head!.val)", separator: "", terminator: ", ")
        head = head?.next
    }
    
    print("")
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(1)
head.next?.next?.next?.next = ListNode(1)

printList(Solution().removeElements(head, 1))
