# Swift-X-Algorithms

Algorithms implemented in Swift/Go/Python.

## 007 Reverse Integer

### Solutions

#### Swift

```Swift
class Solution {
    // 12 ms
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0
        
        while x != 0 {
            result *= 10
            result += x % 10
            x /= 10
        }
        
        guard result <= Int32.max && result >= Int32.min else { return 0 }
        
        return result
    }
}
```

#### Go

```go
func reverse(x int) int {
    
}
```

#### Python

```python
class Solution:
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        
```

## License

- MIT
