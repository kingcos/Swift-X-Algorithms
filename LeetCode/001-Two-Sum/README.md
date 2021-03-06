# Swift-X-Algorithms

> Algorithms implemented in Swift/Go/Python.

## 001 Two Sum

### Solutions

#### Swift

```Swift
class Solution_1 {
    // 688 ms
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
}

class Solution_2 {
    // 40 ms
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int : Int]()
        
        for i in 0..<nums.count {
            let temp = target - nums[i]
            
            if let index = dict[temp] {
                return [index, i]
            }
            
            dict[nums[i]] = i
        }
        return []
    }
}
```

#### Go

```go
func twoSum(nums []int, target int) []int {
    
}
```

#### Python

```python
class Solution:
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        
```

## License

- MIT
