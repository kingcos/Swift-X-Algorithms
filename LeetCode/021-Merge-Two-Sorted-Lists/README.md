# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 021 Merge Two Sorted Lists

### Solutions

#### Swift

```Swift
class Solution_1 {
    // 20 ms
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1 else { return l2 }
        guard let l2 = l2 else { return l1 }
        
        if l1.val < l2.val {
            l1.next = mergeTwoLists(l1.next, l2)
            return l1
        } else {
            l2.next = mergeTwoLists(l1, l2.next)
            return l2
        }
    }
}

class Solution_2 {
    // 20 ms
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1, l2 = l2
        
        let head = ListNode(0)
        var current = head
        
        while let val1 = l1?.val, let val2 = l2?.val {
            if val1 > val2 {
                current.next = l2
                l2 = l2?.next
            } else {
                current.next = l1
                l1 = l1?.next
            }
            current = current.next!
        }
        if l1 == nil {
            current.next = l2
        } else {
            current.next = l1
        }
        
        return head.next
    }
}
```

#### Go

```go
func mergeTwoLists_1(l1 *ListNode, l2 *ListNode) *ListNode {
    head := &ListNode{0, nil}
    current := head

    for l1 != nil && l2 != nil {
        if l1.Val < l2.Val {
            current.Next = l1
            l1 = l1.Next
        } else {
            current.Next = l2
            l2 = l2.Next
        }
        current = current.Next
    }

    if l1 == nil {
        current.Next = l2
    }

    if l2 == nil {
        current.Next = l1
    }

    return head.Next
}

func mergeTwoLists_2(l1 *ListNode, l2 *ListNode) *ListNode {
    if l1 == nil {
        return l2
    }

    if l2 == nil {
        return l1
    }

    if l1.Val > l2.Val {
        l2.Next = mergeTwoLists_2(l1, l2.Next)
        return l2
    } else {
        l1.Next = mergeTwoLists_2(l1.Next, l2)
        return l1
    }
}
```

#### Python

```python
```

## License

- MIT
