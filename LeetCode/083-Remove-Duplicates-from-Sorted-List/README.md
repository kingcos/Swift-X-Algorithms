# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 083 Remove Duplicates from Sorted List

### Solutions

#### Swift

```Swift
class Solution {
    // 40 ms
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var head = head
        let node = ListNode(0)
        node.next = head
        
        while head?.next != nil {
            var temp = head
            temp = temp?.next
            if temp?.val == head?.val {
                if temp?.next != nil {
                    head?.next = temp?.next
                } else {
                    head?.next = nil
                }
            } else {
                head = head?.next
            }
        }
        return node.next
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
