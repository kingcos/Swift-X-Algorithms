# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 035 Search Insert Position

### Solutions

#### Swift

```Swift
class Solution_1 {
    // 44 ms
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let index = nums.firstIndex(of: target) {
            return index
        }
        var nums = nums
        
        nums.append(target)
        return nums.sorted().firstIndex(of: target) ?? 0
    }
}

class Solution_2 {
    // 40 ms
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let last = nums.last, last < target {
            return nums.count
        }
        for i in 0..<nums.count-1 {
            if nums[i] == target {
                return i
            }
            if target >= nums[i] && target <= nums[i+1] {
                return i + 1
            }
        }
        return 0
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
