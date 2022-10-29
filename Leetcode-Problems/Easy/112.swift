//
//  112.swift - Path Sum
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/path-sum/
//  Category  : Tree, Depth-First Search, Breadth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 27/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  *
  * Given the root of a binary tree and an integer targetSum,
  * return true if the tree has a root-to-leaf path
  * such that adding up all the values along the path equals targetSum.
  *
  * A leaf is a node with no children.
  *
  * Example the following tree and targetSum = 22:
  *
  *      (5)
  *      / \
  *    (4)  8
  *    /   / \
  *  (11) 13  4
  *  / \       \
  * 7  (2)      1
  *
  */

enum P112 {
  class Solution {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
      guard let root else { return false }

      var sum = targetSum
      sum -= root.val

      if root.left == nil && root.right == nil {
        return sum == 0
      }
      return hasPathSum(root.left, sum) || hasPathSum(root.right, sum)
    }
  }

  static func getSolution() {
    let nodes = [5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1]
    let targetSum = 22
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(Solution().hasPathSum(tree, targetSum))
  }
}
