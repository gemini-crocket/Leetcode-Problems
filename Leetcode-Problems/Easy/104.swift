//
//  104.swift - Maximum Depth of Binary Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/maximum-depth-of-binary-tree/
//  Category  : Tree, Depth-First Search, Breadth-First Search, Binary Tree

//
//  Created by Thomas Heinis on 26/10/2022.
//  Github    :  https://github.com/thomas-heinis
//  Linkedin  :  https://linkedin.com/in/thomas-heinis
//  Mail      :  mailto:thomas.heinis@ik.me
//

/**
 *
 * A binary tree's maximum depth is the number of nodes along
 * the longest path from the root node down to the farthest leaf node.
 *
 * For example:
 * Given binary tree [3,9,20,nil,nil,15,7],
 *
 *     3
 *    / \
 *   9  20
 *     /  \
 *    15   7
 *
 * return its maximum depth as 3.
 */

struct P104 {

  class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
      guard let root else { return 0 }
      return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
  }

  static func getSolution() -> Void {
    let nodes = [3,9,20,nil,nil,15,7]
    let root = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(root ?? "")
    print(Solution().maxDepth(root))
  }
}
