# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 203 Remove Linked List Elements

### Solutions

#### Swift

```swift
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
```

#### Go

```go
```

#### Python

```python
```

## License

- MIT
