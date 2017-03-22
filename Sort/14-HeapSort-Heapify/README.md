# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
extension Heap {
    init(_ array: Array<T>, _ isOrdered: @escaping (T, T) -> Bool) {
        self.capacity = array.count
        self.isOrdered = isOrdered
        self.elements = array

        for i in stride(from: (count - 2) / 2, through: 0, by: -1) {
            shiftDown(i)
        }
    }
}

func heapSortHeapify<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: @escaping (T, T) -> Bool) -> Array<T> {
    var heap = Heap(arr, isNotOrdered)
    var result = Array<T>()
    for _ in arr {
        result.append(heap.extractExtremum())
    }

    return result
}
```

## License

MIT
