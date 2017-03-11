# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func bubbleSort<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool) {
    for i in 0..<arr.count {
        for j in 0..<arr.count - i - 1 {
            // 极值沉底
            if isNotOrdered(arr[j + 1], arr[j]) {
                swap(&arr[j + 1], &arr[j])
            }
        }
    }
}
```

## License

MIT
