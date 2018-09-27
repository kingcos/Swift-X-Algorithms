# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func selectionSort<T>(_ arr: inout Array<T>,
                      _ isNotOrdered: (T, T) -> Bool) {
    // 依次查找极值
    for i in 0..<arr.count {
        // 记录极值的下标
        var index = i
        
        // 查找后续极值下标
        for j in i + 1..<arr.count {
            // 更新极值下标
            if isNotOrdered(arr[j], arr[index]) {
                index = j
            }
        }
        
        arr.swapAt(i, index)
    }
}
```

## License

MIT
