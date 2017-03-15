# Swift-X-Algorithms

Algorithms implemented in Swift

## Code

```Swift
func quickSortThreeWay<T: Comparable>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool) -> Array<T> {
    func partition<T>(_ arr: inout Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ r: Int) {
        if r - l <= 15 {
            arr = insertionSortAdvanced(arr, isNotOrdered, l, r)
            return
        }
//        guard r - l > 1 else { return }

        // 随机化索引 [l, r)
        let tmpIndex = Int(arc4random_uniform(UInt32(r - l))) + l
        if l != tmpIndex {
            swap(&arr[l], &arr[tmpIndex])
        }
        let tmp = arr[l]

        // [l + 1, r - 1]
        var lt = l, gt = r, i = l + 1
        while i < gt {
            if isNotOrdered(arr[i], tmp) {
                if i != lt + 1 {
                    swap(&arr[i], &arr[lt + 1])
                }
                lt += 1
                i += 1
            } else if isNotOrdered(tmp, arr[i]) {
                if i != gt - 1 {
                    swap(&arr[i], &arr[gt - 1])
                }
                gt -= 1
            } else {
                i += 1
            }
        }

        if l != lt {
            swap(&arr[l], &arr[lt])
        }

        partition(&arr, isNotOrdered, l, lt)
        partition(&arr, isNotOrdered, gt - 1, r)
    }

    var arr = arr
    partition(&arr, isNotOrdered, 0, arr.count)
    return arr
}

func insertionSortAdvanced<T>(_ arr: Array<T>, _ isNotOrdered: (T, T) -> Bool, _ l: Int, _ r: Int) -> Array<T> {
    var arr = arr

    for i in l..<r {
        // 保存一份当前值
        let e = arr[i]
        var j = i
        // 将后面的数与前面已排好序的序列进行逐个倒序比较
        while j > l && isNotOrdered(e, arr[j - 1]) {
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
