//
//  145.swift - Binary Tree Postorder Traversal
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/binary-tree-postorder-traversal/
//  Category  :  Stack, Tree, Depth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 25/10/2022.
//  Github    :  https://github.com/thomas-heinis
//  Linkedin  :  https://linkedin.com/in/thomas-heinis
//  Mail      :  mailto:thomas.heinis@ik.me

/*
 *
 * Given the root of a binary tree, return the postorder traversal of its nodes' values.
 *
 */

struct P145 {

  class Solution {

    func postorderTraversal(_ root: TreeNode?) -> [Int] {
      guard let root else { return [] }

      var stack: [TreeNode] = [root]
      var output: [Int] = []

      while !stack.isEmpty {
        if let root = stack.popLast() {
          output.append(root.val)

          if let left = root.left {
            stack.append(left)
          }

          if let right = root.right {
            stack.append(right)
          }
        }
      }

      return output.reversed()
    }

    static func getSolution() -> Void {
    }
  }
}
