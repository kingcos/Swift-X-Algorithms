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
    // 36 ms, 15.4 MB
    func reversePrint(_ head: ListNode?) -> [Int] {
        var head = head
        var list = [Int]()
        
        while head != nil {
            list.insert(head!.val, at: 0)
            head = head?.next
        }
        
        return list
    }
}

class Solution_2 {
    // 28 ms, 16.8 MB
    func reversePrint(_ head: ListNode?) -> [Int] {
        if head == nil {
            return []
        }
        
        var list = reversePrint(head?.next)
        list.append(head!.val)
        
        return list
    }
}

class Solution_3 {
    // 1 - 28 ms, 17.2 MB
    // 2 - 28 ms, 14 MB
    func reversePrint(_ head: ListNode?) -> [Int] {
        
        var head = reverseList_2(head)
        var arr = [Int]()
        
        while head != nil {
            arr.append(head!.val)
            head = head?.next
        }
        
        return arr
    }
    
    func reverseList_1(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let newHead = reverseList_1(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
    
    func reverseList_2(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var head = head
        var newHead: ListNode? = nil
        
        while head != nil {
            let tmp = head?.next
            head?.next = head
            head?.next = newHead
            newHead = head
            head = tmp
        }
        
        return newHead
    }
}

let head = ListNode(1)
head.next = ListNode(2)
head.next?.next = ListNode(3)
head.next?.next?.next = ListNode(4)
head.next?.next?.next?.next = ListNode(5)

print(Solution_1().reversePrint(head))
print(Solution_2().reversePrint(head))
print(Solution_3().reversePrint(head))
