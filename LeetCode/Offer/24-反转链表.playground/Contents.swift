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
    // 20 ms, 14.4 MB
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var head = head
        var newHead: ListNode? = nil
        
        while head != nil {
            let tmp = head?.next
            
            head?.next = newHead
            newHead = head
            
            head = tmp
        }
        
        return newHead
    }
}

class Solution_2 {
    // 20 ms, 15.3 MB
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        
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
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(4)
head.next?.next?.next?.next = ListNode(5)

printList(head)
//printList(Solution_1().reverseList(head))
printList(Solution_2().reverseList(head))
