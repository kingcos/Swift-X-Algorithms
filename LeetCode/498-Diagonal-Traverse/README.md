# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 498 Diagonal Traverse

### Solutions

#### Swift

```swift
class Solution {
    // 1376 ms
    func findDiagonalOrder(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty, !matrix[0].isEmpty else { return [] }
        let m = matrix.count
        let n = matrix[0].count
    
        var result = [Int]()
        for i in 0..<m+n {
            if i % 2 == 0 {
                for j in 0..<i+1 {
                    if i-j >= m || j >= n { continue }
                    result.append(matrix[i-j][j])
                }
            } else {
                for j in 0..<i+1 {
                    if j >= m || i-j >= n { continue }
                    result.append(matrix[j][i-j])
                }
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
