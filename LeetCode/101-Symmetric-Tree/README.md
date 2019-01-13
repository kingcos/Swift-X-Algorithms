# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 101 Symmetric Tree

### Solutions

#### Swift

```Swift
class Solution {
    // 20 ms
    func isSymmetric(_ root: TreeNode?) -> Bool {
        func isSymmetricNodes(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
            if a == nil && b == nil { return true }
            if a == nil || b == nil { return false }
            
            return a?.val == b?.val && isSymmetricNodes(a?.left, b?.right) && isSymmetricNodes(a?.right, b?.left)
        }
        
        return isSymmetricNodes(root, root)
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
