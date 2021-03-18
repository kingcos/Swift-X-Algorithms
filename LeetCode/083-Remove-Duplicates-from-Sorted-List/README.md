# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 083 Remove Duplicates from Sorted List

### Solutions

#### Swift

```Swift
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
```

#### Go

```go
func deleteDuplicates(head *ListNode) *ListNode {
    newHead := head
    
    for head != nil && head.Next != nil {
        if head.Next.Val == head.Val {
            head.Next = head.Next.Next
        } else {
            head = head.Next
        }
    }

    return newHead
}
```

#### Python

```python
```

## License

- MIT
