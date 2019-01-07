# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 038 Count and Say

### Solutions

#### Swift

```Swift
class Solution {
    // 24 ms
    func countAndSay(_ n: Int) -> String {
        guard n >= 1 && n <= 30 else { fatalError("n is out of range.") }
        
        var result = "1"
        for _ in 1..<n {
            var temp = ""
            let nums = Array(result)
            var count = 1
            for j in 0..<nums.count {
                if j == nums.count - 1 {
                    temp += "\(count)"
                    temp += "\(nums[j])"
                } else {
                    if nums[j] == nums[j+1] {
                        count += 1
                    } else {
                        temp += "\(count)"
                        temp += "\(nums[j])"
                        count = 1
                    }
                }
            }
            result = temp
        }
        return result
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
