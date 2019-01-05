# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 013 Roman to Integer

### Solutions

#### Swift

```Swift
class Solution {
    // 52 ms
    func romanToInt(_ s: String) -> Int {
        let dict = ["I" : 1,
                    "V" : 5,
                    "X" : 10,
                    "L" : 50,
                    "C" : 100,
                    "D" : 500,
                    "M" : 1000]
        guard !s.isEmpty else { fatalError("s is empty.") }
        guard let last = s.last,
              var result = dict[String(last)] else { fatalError("Unknown error.") }
        
        for i in 1..<s.count {
            let second = String(s[s.index(s.startIndex, offsetBy: i)])
            let first = String(s[s.index(s.startIndex, offsetBy: i-1)])
            
            guard let firstValue = dict[first],
                  let secondValue = dict[second] else {
                    fatalError("s isn't a roman value.")
            }
            
            if firstValue < secondValue {
                result -= firstValue
            } else {
                result += firstValue
            }
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
