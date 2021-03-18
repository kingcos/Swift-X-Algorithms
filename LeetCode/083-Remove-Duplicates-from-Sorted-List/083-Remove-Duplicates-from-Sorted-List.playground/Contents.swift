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
    // 32 ms, 13.7 MB
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var head = head
        
        let headPtr = head
        
        while head != nil && head?.next != nil {
            if head!.val == head!.next!.val {
                head?.next = head?.next?.next
            } else {
                head = head?.next
            }
        }
        
        return headPtr
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
head.next?.next = ListNode(3)

printList(Solution().deleteDuplicates(head))
