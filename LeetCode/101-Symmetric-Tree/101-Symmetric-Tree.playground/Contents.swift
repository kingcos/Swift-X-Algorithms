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
    // 20 ms
    func isSymmetric(_ root: TreeNode?) -> Bool {
        func isSymmetricNodes(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
            if a == nil && b == nil { return true }
            if a == nil || b == nil { return false }
            
            return a?.val == b?.val && isSymmetricNodes(a?.left, b?.right) && isSymmetricNodes(a?.right, b?.left)
        }
        
        return isSymmetricNodes(root, root)
    }
}
