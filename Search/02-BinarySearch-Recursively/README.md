# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func binarySearchRecursively<T: Comparable>(_ target: T,
                                            in arr: [T]) -> Int? {
    func _binarySearchRecursively<T: Comparable>(_ target: T,
                                                 in arr: [T],
                                                 of range: Range<Int>) -> Int? {
        guard range.lowerBound < range.upperBound else { return nil }
        
        let middle = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if target == arr[middle] {
            return middle
        }
        
        if target < arr[middle] {
            return _binarySearchRecursively(target, in: arr, of: range.lowerBound ..< middle)
        } else {
            return _binarySearchRecursively(target, in: arr, of: middle + 1 ..< range.upperBound)
        }
    }
    
    return _binarySearchRecursively(target, in: arr, of: 0 ..< arr.count)
}
```

## License

MIT
