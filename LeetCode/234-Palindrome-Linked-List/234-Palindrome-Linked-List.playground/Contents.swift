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

class Solution_1 {
    // 1072 ms, 31.3 MB
    func isPalindrome(_ head: ListNode?) -> Bool {
        var head = head
        var list = [Int]()
        
        while head != nil {
            list.append(head!.val)
            head = head?.next
        }
        
        for i in 0...list.count / 2 {
            if list[i] != list[list.count - i - 1] {
                return false
            }
        }
        
        return true
    }
}

class Solution_2 {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var head = head
        var list = [Int]()
        
        while head != nil {
            list.append(head!.val)
            head = head?.next
        }
        
        for i in 0...list.count / 2 {
            if list[i] != list[list.count - i - 1] {
                return false
            }
        }
        
        return true
    }
}

let head = ListNode(1)
head.next = ListNode(2)
//head.next?.next = ListNode(2)
head.next?.next?.next = ListNode(1)
//head.next?.next?.next?.next = ListNode(1)

print(Solution_1().isPalindrome(head))
print(Solution_2().isPalindrome(head))
