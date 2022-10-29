//
//  94.swift - Binary Tree Inorder Traversal
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/binary-tree-inorder-traversal/
//  Category  :  Stack, Tree, Depth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 25/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * Given the root of a binary tree, return the inorder traversal of its nodes' values.
  *
  */

enum P94 {
  class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
      var node: TreeNode? = root
      var output: [Int] = []
      var stack: [TreeNode?] = []

      while !stack.isEmpty || node != nil {
        if node != nil {
          stack.append(node)
          node = node?.left
        } else {
          node = stack.removeLast()
          output.append(node!.val)
          node = node?.right
        }
      }
      return output
    }

    static func getSolution() {
    }
  }
}
