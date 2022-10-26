//
//  101.swift - Symmetric Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/symmetric-tree/
//  Category  : Tree, Depth-First Search, Breadth-First Search, Binary Tree

//
//  Created by Thomas Heinis on 26/10/2022.
//  Github    :  https://github.com/thomas-heinis
//  Linkedin  :  https://linkedin.com/in/thomas-heinis
//  Mail      :  mailto:thomas.heinis@ik.me
//

/**
 *
 * Given the root of a binary tree, check whether it is a mirror of itself
 * (i.e., symmetric around its center).
 *
 * For example:
 * Given binary tree [1,2,2,3,4,4,3],
 *
 *     1
 *    / \
 *   2   2
 *  / \ / \
 * 3     4  4    3
 *
 * is symmetric.
 * But the following is not:
 *
 *     1
 *    / \
 *   2   2
 *    \   \
 *     3   3
 */

struct P101 {

  class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
      guard let root else { return true }
      return isSymmetric(root.left, root.right)
    }

    func isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
      if left == nil && right == nil {
        return true
      }

      if left == nil || right == nil || left?.val != right?.val {
        return false
      }

      return isSymmetric(left?.right, right?.left) && isSymmetric(left?.left, right?.right)
    }
  }

  static func getSolution() -> Void {
    let nodes = [1,2,2,3,4,4,3]
    let root = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(Solution().isSymmetric(root))
  }
}
