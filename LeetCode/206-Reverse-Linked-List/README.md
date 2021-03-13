# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 206 Reverse Linked List

### Solutions

#### Swift

```swift
class Solution_1 {
    // 20 ms, 14.4 MB
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var head = head
        var newHead: ListNode? = nil
        
        while head != nil {
            let tmp = head?.next
            
            head?.next = head
            head?.next = newHead
            newHead = head
            
            head = tmp
        }
        
        return newHead
    }
}

class Solution_2 {
    // 20 ms, 15.3 MB
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
}
```

#### Go

```go
func reverseList_1(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}

	var newHead *ListNode

	for head != nil {
		tmp := head.Next

		head.Next = newHead
		newHead = head

		head = tmp
	}

	return newHead
}

func reverseList_2(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}

	newHead := reverseList_2(head.Next)
	head.Next.Next = head
	head.Next = nil

	return newHead
}
```

#### Python

```python
```

## License

- MIT
