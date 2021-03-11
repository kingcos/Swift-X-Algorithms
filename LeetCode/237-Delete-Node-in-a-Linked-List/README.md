# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 237 Delete Node in a Linked List

### Solutions

#### Swift

```swift
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
```

#### Go

```go
func deleteNode(node *ListNode) {
	node.Val = node.Next.Val
	node.Next = node.Next.Next
}
```

#### Python

```python
```

## License

- MIT
