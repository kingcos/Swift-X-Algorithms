# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 227 Basic Calculator II

### Solutions

#### Swift

```swift
class Solution {
    // 104 ms, 15.8 MB
    func calculate(_ s: String) -> Int {
        let s = s + "+0"
        var lastOp = "+"
        var nbStack = [Int]()
        var num = 0
        
        for val in s {
            if let n = Int(String(val)) {
                num = num * 10 + n
            }
            if val == "+" || val == "-" || val == "*" || val == "/" {
                switch lastOp {
                case "+":
                    nbStack.append(num)
                case "-":
                    nbStack.append(-num)
                case "*":
                    nbStack.append(nbStack.removeLast()*num)
                case "/":
                    nbStack.append(nbStack.removeLast()/num)
                default:
                    fatalError()
                }
                num = 0
                lastOp = String(val)
            }
        }
        
        return nbStack.reduce(0, +)
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
