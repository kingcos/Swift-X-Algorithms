# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 100 Same Tree

### Solutions

#### Swift

```Swift
class Solution {
    // 12 ms
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        if p == nil && q != nil { return false }
        if p != nil && q == nil { return false }
        if (p?.left == nil && q?.left != nil) || (q?.left == nil && p?.left != nil) { return false }
        if (p?.right == nil && q?.right != nil) || (q?.right == nil && p?.right != nil) { return false }
        
        if p?.left != nil {
            if p?.right != nil {
                return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right) && p!.val == q!.val
            } else {
                return isSameTree(p?.left, q?.left) && p!.val == q!.val
            }
        } else {
            if p?.right != nil {
                return isSameTree(p?.right, q?.right) && p!.val == q!.val
            } else {
                return p!.val == q!.val
            }
        }
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
