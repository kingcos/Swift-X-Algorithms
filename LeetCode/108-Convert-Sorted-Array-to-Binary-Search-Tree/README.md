# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 108 Convert Sorted Array to Binary Search Tree

### Solutions

#### Swift

```Swift
class Solution {
    // 44 ms
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard !nums.isEmpty else { return nil }
        var nums = nums
        
        let root = TreeNode(nums[(nums.count - 1) / 2])
        let left = [Int](nums[0..<(nums.count - 1) / 2])
        let right = [Int](nums[(nums.count - 1) / 2 + 1..<nums.count])
        
        if !left.isEmpty {
            let a = sortedArrayToBST(left)
            root.left = a
        }
        
        if !right.isEmpty {
            let a = sortedArrayToBST(right)
            root.right = a
        }
        
        return root
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
