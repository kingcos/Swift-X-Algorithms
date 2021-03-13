# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 876 Middle of the Linked List

### Solutions

#### Swift

```swift
class Solution {
    // 4 ms, 13.2 MB
    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowPtr = head
        var fastPtr = head?.next
        
        while fastPtr?.next != nil {
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        
        return slowPtr
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
