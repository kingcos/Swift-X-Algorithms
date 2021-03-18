# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 234 Palindrome Linked List

### Solutions

#### Swift

```swift
class Solution {
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
```

#### Go

```go
```

#### Python

```python
```

## License

- MIT
