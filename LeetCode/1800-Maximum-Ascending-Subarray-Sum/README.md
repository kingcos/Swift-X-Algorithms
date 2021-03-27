# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 1800 Maximum Ascending Subarray Sum

### Solutions

#### Swift

```swift
class Solution {
    // 4 ms, 13.7 MB
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var sum = [nums.first!]
        
        for i in 0..<nums.count-1 {
            if nums[i] < nums[i+1] {
                sum[sum.count-1] += nums[i+1]
            } else {
                sum.append(nums[i+1])
            }
        }
        
        return sum.max()!
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
