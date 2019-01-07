# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 053 Maximum Subarray

### Solutions

#### Swift

```Swift
class Solution {
    // 44 ms
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.first ?? 0 }
        
        var theMax = nums[0]
        var currentMax = nums[0]
        for i in 1..<nums.count {
            currentMax = nums[i] + max(0, currentMax)
            theMax = max(currentMax, theMax)
        }
        
        return theMax
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
