//
//  98.swift - Validate Binary Search Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/validate-binary-search-tree/
//  Category  : Tree, Depth-First Search, Binary Search Tree, Binary Tree
//
//  Created by Thomas Heinis on 29/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * Given the root of a binary tree, determine if it is a valid binary search tree (BST).
  * A valid BST is defined as follows:
  * The left subtree of a node contains only nodes with keys less than the node's key.
  * The right subtree of a node contains only nodes with keys greater than the node's key.
  * Both the left and right subtrees must also be binary search trees.
  *
  * For example:
  * Given binary tree [5,1,4,null,null,3,6],
  *
  *     5
  *    / \
  *   1   4
  *      / \
  *     3   6
  *
  * returns false beacause the root node's value is 5 but its right child's value is 4.
  *
  */

enum P98 {
  class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
      return isValidBST(root, nil, nil)
    }

    func isValidBST(_ node: TreeNode?, _ low: Int?, _ high: Int?) -> Bool {
      guard let node else { return true }

      if let low, node.val <= low {
          return false
      }

      if let high, node.val >= high {
          return false
      }

      return isValidBST(node.left, low, node.val) && isValidBST(node.right, node.val, high)
    }
  }

  static func getSolution() -> Void {
    let nodes = [2,1,3]
//    let nodes = [5,1,4,nil,nil,3,6]
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(tree!)
    print(Solution().isValidBST(tree))
  }
}
