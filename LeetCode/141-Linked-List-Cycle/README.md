# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 141 Linked List Cycle

### Solutions

#### Swift

```swift
class Solution {
    // 84 ms, 15.2 MB
    func hasCycle(_ head: ListNode?) -> Bool {
        var slowPtr = head
        var fastPtr = head?.next
        
        while fastPtr != nil {
            if slowPtr === fastPtr {
                return true
            }
            
            slowPtr = slowPtr?.next
            fastPtr = fastPtr?.next?.next
        }
        
        return false
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
