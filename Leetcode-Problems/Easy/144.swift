//
//  144.swift - Binary Tree Preorder Traversal
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/binary-tree-preorder-traversal/
//  Category  :  Stack, Tree, Depth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 25/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * Given the root of a binary tree, return the preorder traversal of its nodes' values.
  *
  */

enum P144 {
  class Solution {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
      guard let root else { return [] }

      var stack: [TreeNode] = [root]
      var output: [Int] = []

      while !stack.isEmpty {
        if let root = stack.popLast() {
          output.append(root.val)

          if let right = root.right {
            stack.append(right)
          }

          if let left = root.left {
            stack.append(left)
          }
        }
      }

      return output
    }

    static func getSolution() {
    }
  }
}
