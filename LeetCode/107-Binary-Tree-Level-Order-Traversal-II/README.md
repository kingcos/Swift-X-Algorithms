# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 107 Binary Tree Level Order Traversal II

### Solutions

#### Swift

```Swift
class Solution {
    // 16 ms
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        func nextLevelNodes(_ nodes: [TreeNode]) -> [TreeNode] {
            return nodes.reduce([TreeNode]()) { result, node in
                var result = result
                if let left = node.left {
                    result.append(left)
                }
                
                if let right = node.right {
                    result.append(right)
                }
                
                return result
            }
        }
        
        guard let root = root else { return [] }
        var result = [[Int]]()
        var nodes = [root]
        while nodes.count != 0 {
            result.append(nodes.reduce([Int]()) { $0 + [$1.val] })
            nodes = nextLevelNodes(nodes)
        }
        return result.reversed()
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
