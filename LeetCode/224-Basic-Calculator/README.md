# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 224 Basic Calculator

### Solutions

#### Swift

```swift
class Solution {
    // 88 ms, 14.4 MB
    func calculate(_ s: String) -> Int {
        var ops = [1], sign = 1, result = 0, num = 0, idx = 0
        
        for c in s {
            switch c {
            case " ":
                break
            case "+":
                result += num * sign
                num = 0
                sign = ops.last!
            case "-":
                result += num * sign
                num = 0
                sign = -ops.last!
            case "(":
                result += num * sign
                num = 0
                ops.append(sign)
            case ")":
                result += num * sign
                num = 0
                ops.removeLast()
            default:
                num = num * 10 + Int(String(c))!
            }
            
            idx += 1
        }
        
        result += num * sign

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