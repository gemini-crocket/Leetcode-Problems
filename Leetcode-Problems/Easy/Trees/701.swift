//
//  701.swift - Insert into a Binary Search Tree
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/insert-into-a-binary-search-tree/
//  Category  : Tree, Binary Search Tree, Binary Tree
//
//  Created by Thomas Heinis on 28/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  *
  * You are given the root node of a binary search tree (BST) and
  * a value to insert into the tree. Return the root node of the BST
  * after the insertion. It is guaranteed that the new value does not
  * exist in the original BST.
  *
  * Notice that there may exist multiple valid ways for the insertion,
  * as long as the tree remains a BST after insertion.
  * You can return any of them.
  *
  * For example:
  * Given binary tree [4,2,7,1,3], val to add = 5
  *
  *     4
  *    / \
  *   2   7
  *  / \
  * 1   3
  *
  * returns:
  *
  *      4
  *    /   \
  *   2     7
  *  / \   /
  * 1   3 5
  *
  */

enum P701 {
  class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
      guard let root else { return TreeNode(val) }

      if val > root.val {
        root.right = insertIntoBST(root.right, val)
      } else {
        root.left = insertIntoBST(root.left, val)
      }

      return root
    }
  }

  static func getSolution() {
    let nodes = [4, 2, 7, 1, 3]
    let val = 5
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)

    print(Solution().insertIntoBST(tree, val) ?? "")

    if let tree {
      print(tree)
    }
  }
}
