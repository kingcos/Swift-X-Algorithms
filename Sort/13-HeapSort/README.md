# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func heapSort<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: @escaping (T, T) -> Bool) -> Array<T> {
    var heap = Heap(arr.count, isNotOrdered)
    for i in arr {
        heap.insert(i)
    }
    var result = Array<T>()
    for _ in arr {
        result.append(heap.extractExtremum())
    }

    return result
}
```

## License

MIT
