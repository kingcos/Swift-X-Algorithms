# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 160 Intersection of Two Linked Lists

### Solutions

#### Swift

```swift
class Solution {
    // 344 ms, 16.7 MB
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }
        
        var hA = headA
        var hB = headB
        
        while hA !== hB {
            hA = hA == nil ? headB : hA?.next
            hB = hB == nil ? headA : hB?.next
        }
        
        return hA
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
