# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func quickSort<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    func partition<T>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ r: Int) -> (index: Int, array: Array<T>) {
        var arr = arr
        let tmp = arr[l]

        var j = l
        for i in (l + 1)..<r {
            if isNotOrdered(arr[i], tmp) {
                j += 1
                if i != j {
                    swap(&arr[i], &arr[j])
                }
            }
        }

        if l != j {
            swap(&arr[l], &arr[j])
        }
        return (j, arr)
    }

    guard arr.count > 1 else { return arr }

    let res = partition(arr, isNotOrdered, 0, arr.count)
    let lArr = quickSort(Array(res.array[0..<res.index]), isNotOrdered)
    let rArr = quickSort(Array(res.array[(res.index + 1)..<arr.count]), isNotOrdered)
    let equal = Array(res.array[res.index..<(res.index + 1)])

    return lArr + equal + rArr
}
```

## License

MIT
