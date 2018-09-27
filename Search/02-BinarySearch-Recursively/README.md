# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func binarySearchRecursively<T: Comparable>(_ target: T,
                                            in arr: [T],
                                            of range: Range<Int>) -> Int? {
    guard range.lowerBound < range.upperBound else { return nil }
    
    let middle = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    if target == arr[middle] {
        return middle
    }
    
    if target < arr[middle] {
        return binarySearchRecursively(taget, in: arr, of: range.lowerBound ..< middle)
    } else {
        return binarySearchRecursively(taget, in: arr, of: middle + 1 ..< range.upperBound)
    }
}
```

## License

MIT
