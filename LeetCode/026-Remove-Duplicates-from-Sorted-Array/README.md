# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 026 Remove Duplicates from Sorted Array

### Solutions

#### Swift

```Swift
class Solution_1 {
    // 92 ms
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums)).sorted()
        return nums.count
    }
}

class Solution_2 {
    // 84 ms
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var i = 0
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
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
