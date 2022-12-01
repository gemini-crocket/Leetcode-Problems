//
//  235.swift - Lowest Common Ancestor of a Binary Search Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
//  Category  : Tree, Depth-First Search, Binary Search Tree, Binary Tree
//
//  Created by Thomas Heinis on 29/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * Given a binary search tree (BST), find the lowest common
  * ancestor (LCA) node of two given nodes in the BST.
  *
  * According to the definition of LCA on Wikipedia:
  * “The lowest common ancestor is defined between two nodes
  * p and q as the lowest node in T that has both p and q as
  * descendants (where we allow a node to be a descendant of itself).”
  *
  * For example:
  * Given binary tree [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5], p = 2, q = 8,
  *
  *       6
  *     /   \
  *   2       8
  *  / \     / \
  * 0   4   7   9
  *    / \
  *   3   5
  *
  * returns 6 because the LCA of nodes 2 and 8 is 6.
  *
  */

enum P235 {
  class Solution {
    func lowestCommonAncestor(_ node: TreeNode?, _ pNode: TreeNode?, _ qNode: TreeNode?) -> TreeNode? {
      guard
        let node,
        let pNode,
        let qNode
      else {
        return nil
      }

      var currentNode: TreeNode? = node

      while currentNode != nil {
        if currentNode?.val ?? 0 < pNode.val, currentNode?.val ?? 0 < qNode.val {
          currentNode = currentNode?.right
        } else if currentNode?.val ?? 0 > pNode.val, currentNode?.val ?? 0 > qNode.val {
          currentNode = currentNode?.left
        } else {
          return currentNode
        }
      }
      return nil
    }
  }

  static func getSolution() {
    let nodes = [6, 2, 8, 0, 4, 7, 9, nil, nil, 3, 5]
    let pNode = TreeNode(2)
    let qNode = TreeNode(4)
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)

    print(Solution().lowestCommonAncestor(tree, pNode, qNode) ?? "")

    if let tree {
      print(tree)
    }
  }
}
