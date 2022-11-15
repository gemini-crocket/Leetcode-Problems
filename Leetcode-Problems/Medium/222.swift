//
//  222.swift - Count Complete Tree Nodes
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/count-complete-tree-nodes/
//  Category : Binary Search, Tree, Depth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 15/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P222 {
  class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
      var nodesCount = 0

      func inorder(_ tree: TreeNode?) {
        if tree == nil {
          return
        }

        inorder(tree?.left)
        nodesCount += 1
        inorder(tree?.right)
      }

      inorder(root)
      return nodesCount
    }
  }

  static func getSolution() {
    let values = [1, 2, 3, 4, 5, 6]
    let tree = BinaryTreeHelper.buildTree(withNodes: values)
    print(tree)
    print(Solution().countNodes(tree))
  }
}
