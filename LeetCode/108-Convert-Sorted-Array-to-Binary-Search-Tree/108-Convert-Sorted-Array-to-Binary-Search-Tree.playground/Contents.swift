import UIKit

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    // 44 ms
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard !nums.isEmpty else { return nil }
        var nums = nums
        
        let root = TreeNode(nums[(nums.count - 1) / 2])
        let left = [Int](nums[0..<(nums.count - 1) / 2])
        let right = [Int](nums[(nums.count - 1) / 2 + 1..<nums.count])
        
        if !left.isEmpty {
            let a = sortedArrayToBST(left)
            root.left = a
        }
        
        if !right.isEmpty {
            let a = sortedArrayToBST(right)
            root.right = a
        }
        
        return root
    }
}
