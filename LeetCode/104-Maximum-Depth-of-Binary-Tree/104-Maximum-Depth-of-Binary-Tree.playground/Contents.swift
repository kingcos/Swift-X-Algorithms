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
    // 36 ms
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let node = root else { return 0 }
        var depth = 1
        
        if node.left != nil || node.right != nil {
            depth += max(maxDepth(node.left), maxDepth(node.right))
        }
        
        return depth
    }
}
