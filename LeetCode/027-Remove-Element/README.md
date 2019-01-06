# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 027 Remove Element

### Solutions

#### Swift

```Swift
class Solution_1 {
    // 12 ms
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }
}

class Solution {
    // 12 ms
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        for j in 0..<nums.count {
            if nums[j] != val {
                nums[i] = nums[j]
                i += 1
            }
        }
        return i
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
