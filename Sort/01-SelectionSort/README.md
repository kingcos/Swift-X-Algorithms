# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func selectionSort<T>(_ arr: inout Array<T>, _ isOrdered: (T, T) -> Bool) {
    // 依次查找极值
    for i in 0..<arr.count {
        // 记录极值的下标
        var index = i

        // 查找后续极值下标
        for j in i + 1..<arr.count {
            // 更新极值下标
            if isOrdered(arr[j], arr[index]) {
                index = j
            }
        }

        // Swift 中的 swap 不支持自身交换
        if i != index {
            swap(&arr[i], &arr[index])
        }
    }
}
```

## License

MIT
