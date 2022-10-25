//
//  94.swift - Binary Tree Inorder Traversal
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/binary-tree-inorder-traversal/
//  Category  :  Stack, Tree, Depth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 25/10/2022.
//  Github    :  https://github.com/gemini-crocket
//  Linkedin  :  https://linkedin.com/in/thomas-heinis
//  Mail      :  mailto:thomas.heinis@ik.me

/**
 *
 * Given the root of a binary tree, return the inorder traversal of its nodes' values.
 *
 */

struct P94 {

  class Solution {

    func inorderTraversal(_ root: TreeNode?) -> [Int] {
      var node: TreeNode? = root
      var result: [Int] = []
      var stack: [TreeNode?] = []

      while !stack.isEmpty || node != nil {
        if node != nil {
          stack.append(node)
          node = node?.left
        } else {
          node = stack.removeLast()
          result.append(node!.val)
          node = node?.right
        }
      }
      return result
    }

    static func getSolution() -> Void {
    }
  }
}
