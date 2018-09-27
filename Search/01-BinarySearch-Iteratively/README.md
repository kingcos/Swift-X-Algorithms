# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func binarySearchIteratively<T: Comparable>(_ target: T,
                                            in arr: [T]) -> Int? {
    // 下标下限
    var lowerBound = 0
    // 下标上限
    var upperBound = arr.count - 1
    
    while lowerBound <= upperBound {
        let middle = lowerBound + (upperBound - lowerBound) / 2
        
        if arr[middle] == target {
            return middle
        }
        
        if target < arr[middle] {
            upperBound = middle - 1
        } else {
            lowerBound = middle + 1
        }
    }
    
    return nil
}
```

## License

MIT
