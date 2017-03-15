# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func quickSortTwoWay<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    func partition<T>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ r: Int) -> (index: Int, array: Array<T>) {
        var arr = arr
        // 随机化索引 [l, r)
        let tmpIndex = Int(arc4random_uniform(UInt32(r - l))) + l
        if l != tmpIndex {
            swap(&arr[l], &arr[tmpIndex])
        }
        let tmp = arr[l]

        // [l + 1, r - 1]
        var i = l + 1, j = r - 1
        while true {
            while i <= r - 1 && isNotOrdered(arr[i], tmp) {
                i += 1
            }
            while j >= l + 1 && isNotOrdered(tmp, arr[j]) {
                j -= 1
            }

            if i > j {
                break
            }

            if i != j {
                swap(&arr[i], &arr[j])
            }

            i += 1
            j -= 1
        }

        if l != j {
            swap(&arr[l], &arr[j])
        }
        return (j, arr)
    }

    //    guard arr.count > 1 else { return arr }
    // 当数组大小小于等于 15 时，切换为插入排序
    if arr.count <= 15 {
        return insertionSortAdvanced(arr, isNotOrdered)
    }

    let res = partition(arr, isNotOrdered, 0, arr.count)
    let lArr = quickSortTwoWay(Array(res.array[0..<res.index]), isNotOrdered)
    let rArr = quickSortTwoWay(Array(res.array[(res.index + 1)..<arr.count]), isNotOrdered)
    let equal = Array(res.array[res.index..<(res.index + 1)])

    return lArr + equal + rArr
}

func insertionSortAdvanced<T>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    var arr = arr

    for i in 0..<arr.count {
        // 保存一份当前值
        let e = arr[i]
        var j = i
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        while j > 0 && isNotOrdered(e, arr[j - 1]) {
            arr[j] = arr[j - 1]
            j -= 1
        }
        arr[j] = e
    }

    return arr
}
```

## License

MIT
