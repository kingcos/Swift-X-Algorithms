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

class Solution_1 {
    func deleteNode(_ node: ListNode?) {
        guard let node = node,
              let next = node.next else {
            return
        }
        
        node.val = next.val
        node.next = node.next?.next
    }
}

class Solution_2 {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node?.next = node?.next?.next
    }
}

var node: ListNode? = ListNode(4)
node?.next = ListNode(5)
node?.next?.next = ListNode(1)
node?.next?.next?.next = ListNode(9)

Solution_2().deleteNode(node?.next)

while node != nil {
    print(node!.val)
    node = node?.next
}
