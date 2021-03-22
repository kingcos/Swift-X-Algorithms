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
    // 24 ms, 13.7 MB
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil { return nil }
        
        if head!.val == val {
            return head?.next
        }
        
        let newHead = head
        var head = head
        
        while head?.next != nil {
            if head!.next!.val == val {
                head?.next = head?.next?.next

                return newHead
            } else {
                head = head?.next
            }
        }
        
        return newHead
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
head.next = ListNode(3)
head.next?.next = ListNode(5)

printList(Solution().deleteNode(head, 1))
printList(Solution().deleteNode(head, 3))
