//
//  102.swift - Binary Tree Level Order Traversal
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/binary-tree-level-order-traversal/
//  Category  :  Tree, Breadth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 26/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  *
  * Given the root of a binary tree, return the level order traversal of its nodes' values.
  * (ie, from left to right, level by level).
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
  * return its level order traversal as:
  *
  * [
  *  [3],
  *  [9,20],
  *  [15,7]
  * ]
  */

enum P102 {
  class Solution {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
      guard let root else { return [] }

      var stack: [(TreeNode, Int)] = [(root, 0)]
      var output: [[Int]] = []
      var current = stack.startIndex, end = stack.endIndex

      while current < end {
        let (node, level) = stack[current]

        if level >= output.endIndex {
          output.append([])
        }

        output[level].append(node.val)

        if let left = node.left {
          stack.append((left, level + 1))
        }

        if let right = node.right {
          stack.append((right, level + 1))
        }

        end = stack.endIndex
        current += 1
      }
      return output
    }
  }

  static func getSolution() {
    let nodes = [3, 9, 20, nil, nil, 15, 7]
    let root = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(root ?? "")
    print(Solution().levelOrder(root))
  }
}
