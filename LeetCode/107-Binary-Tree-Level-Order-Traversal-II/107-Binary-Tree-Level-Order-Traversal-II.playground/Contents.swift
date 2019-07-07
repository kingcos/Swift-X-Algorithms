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
    // 16 ms
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        func nextLevelNodes(_ nodes: [TreeNode]) -> [TreeNode] {
            return nodes.reduce([TreeNode]()) { result, node in
                var result = result
                if let left = node.left {
                    result.append(left)
                }
                
                if let right = node.right {
                    result.append(right)
                }
                
                return result
            }
        }
        
        guard let root = root else { return [] }
        var result = [[Int]]()
        var nodes = [root]
        while nodes.count != 0 {
            result.append(nodes.reduce([Int]()) { $0 + [$1.val] })
            nodes = nextLevelNodes(nodes)
        }
        return result.reversed()
    }
}
