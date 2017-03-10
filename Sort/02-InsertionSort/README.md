# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func insertionSort<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool) {
    for i in 0..<arr.count {
        var j = i
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        while j > 0 && isNotOrdered(arr[j], arr[j - 1]) {
            swap(&arr[j], &arr[j - 1])
            j -= 1
        }
    }
}
```

## License

MIT
