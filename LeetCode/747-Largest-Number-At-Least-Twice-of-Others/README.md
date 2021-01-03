# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 747 Largest Number At Least Twice of Others

### Solutions

#### Swift

```Swift
class Solution {
    // 16 ms
    func dominantIndex(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return -1 }
        
        var maxIndex = 0
        
        for t in nums.enumerated() {
            maxIndex = t.element >= nums[maxIndex] ? t.offset : maxIndex
        }
        
        for t in nums.enumerated() {
            guard t.offset != maxIndex else { continue }
            
            if t.element * 2 > nums[maxIndex] {
                return -1
            }
        }
        
        return  maxIndex
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
