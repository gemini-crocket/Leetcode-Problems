//
//  700.swift - Search in a Binary Search Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/search-in-a-binary-search-tree/
//  Category  : Tree, Binary Search Tree, Binary Tree
//
//  Created by Thomas Heinis on 28/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  *
  * You are given the root of a binary search tree (BST) and an integer val.
  * Find the node in the BST that the node's value equals val and return
  * the subtree rooted with that node. If such a node does not exist, return null.
  *
  * For example:
  * Given binary tree [4,2,7,1,3],
  *
  *     4
  *    / \
  *   2   7
  *  / \
  * 1   3
  *
  * returns:
  *
  *   2
  *  / \
  * 1   3
  *
  */

enum P700 {
  class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
      guard let root else { return root }

      if val == root.val {
        return root
      }

      return val < root.val ? searchBST(root.left, val) : searchBST(root.right, val)
    }
  }

  static func getSolution() {
    let nodes = [4, 2, 7, 1, 3]
    let val = 2
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(Solution().searchBST(tree, val) ?? "")

    if let tree {
      print(tree)
    }
  }
}
