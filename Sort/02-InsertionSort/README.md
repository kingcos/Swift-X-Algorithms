# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func insertionSort<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool) {
    for i in 0..<arr.count {
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        for j in stride(from: i, to: 0, by: -1) {
            if isNotOrdered(arr[j], arr[j - 1]) {
                swap(&arr[j], &arr[j - 1])
            }
        }
    }
}
```

## License

MIT
