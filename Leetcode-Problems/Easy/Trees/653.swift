//
//  653.swift - Two Sum IV - Input is a BST
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/two-sum-iv-input-is-a-bst/
//  Category  : Hash Table, Two Pointers, Tree, Depth-First Search, Breadth-First Search, Binary Search Tree, Binary Tree
//
//  Created by Thomas Heinis on 29/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  *
  * Given the root of a Binary Search Tree and a target number k,
  * return true if there exist two elements in the BST
  * such that their sum is equal to the given target.
  *
  * For example:
  * Given binary tree [5,3,6,2,4,null,7], target = 9
  *
  *     5
  *    / \
  *   3   6
  *  / \   \
  * 2  4    7
  *
  * returns true.
  * But false for target = 28.
  *
  */

enum P653 {
  class Solution {
    var map: Set<Int> = []

    func findTarget(_ node: TreeNode?, _ target: Int) -> Bool {
      guard let node else { return false }

      if map.contains(target - node.val) {
        return true
      }

      map.insert(node.val)
      return findTarget(node.left, target) || findTarget(node.right, target)
    }
  }

  static func getSolution() {
    let nodes = [5, 3, 6, 2, 4, nil, 7]
    let target = 9
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)

    if let tree {
      print(tree)
      print(Solution().findTarget(tree, target))
    }
  }
}
