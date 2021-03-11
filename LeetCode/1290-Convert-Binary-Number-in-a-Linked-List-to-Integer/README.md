# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 1290 Convert Binary Number in a Linked List to Integer

### Solutions

#### Swift

```swift
class Solution_1 {
    // 4 ms, 14 MB
    func getDecimalValue(_ head: ListNode?) -> Int {
        var head = head
        var arr = [Int]()
        
        while head != nil {
            arr.append(head!.val)
            head = head?.next
        }
        
        var result = 0
        
        for (index, item) in arr.reversed().enumerated() {
            result += item * Int(pow(2, Float(index)))
        }
        
        return result
    }
}

class Solution_2 {
    // 4 ms, 13.4 MB
    func getDecimalValue(_ head: ListNode?) -> Int {
        var head = head
        var result = 0
        
        while head != nil {
            result = result * 2 + head!.val
            head = head?.next
        }
        
        return result
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
