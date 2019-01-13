# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 104 Maximum Depth of Binary Tree

### Solutions

#### Swift

```Swift
class Solution {
    // 36 ms
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let node = root else { return 0 }
        var depth = 1
        
        if node.left != nil || node.right != nil {
            depth += max(maxDepth(node.left), maxDepth(node.right))
        }
        
        return depth
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
