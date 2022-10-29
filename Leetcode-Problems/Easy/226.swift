//
//  226.swift - Invert Binary Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/invert-binary-tree/
//  Category  : Tree, Depth-First Search, Breadth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 27/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  *
  * Given the root of a binary tree, invert the tree, and return its root.
  * Example:
  *
  *      4
  *    /   \
  *   2     7
  *  / \   / \
  * 1   3 6   9
  *
  * to
  *      4
  *    /   \
  *   7     2
  *  / \   / \
  * 9   6 3   1
  *
  */

enum P226 {
  class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
      guard let root else { return nil }

      let right = invertTree(root.right)
      let left = invertTree(root.left)

      root.left = right
      root.right = left

      return root
    }
  }

  static func getSolution() {
    let nodes = [4, 2, 7, 1, 3, 6, 9]
    let root = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(root ?? "")
    print(Solution().invertTree(root) ?? "")
  }
}
