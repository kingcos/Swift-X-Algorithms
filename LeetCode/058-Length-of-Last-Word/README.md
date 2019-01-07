# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 058 Length of Last Word

### Solutions

#### Swift

```Swift
class Solution {
    // 16 ms
    func lengthOfLastWord(_ s: String) -> Int {
        let s = s.trimmingCharacters(in: CharacterSet(charactersIn: " "))
        guard let index = s.lastIndex(of: " ") else { return s.count }
        return s[index...].count - 1
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
