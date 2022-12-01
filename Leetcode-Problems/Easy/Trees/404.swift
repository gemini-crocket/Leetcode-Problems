//
//  404.swift - Sum of Left Leaves
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/sum-of-left-leaves/
//  Category : Tree, Depth-First Search, Breadth-First Search, Binary Tree
//
//  Created by Thomas Heinis on 23/11/2022.
//  GitHub   :  https://github.com/hoseiocean
//  LinkedIn :  https://linkedin.com/in/hoseiocean
//  E-mail   :  mailto:thomas.heinis@ik.me
//

enum P404 {
  class Solution {
    func sumOfLeftLeaves(_ node: TreeNode?) -> Int {
      guard let node else { return 0 }

      var sum = 0

      if let leftNode = node.left {
        if leftNode.left == nil && leftNode.right == nil {
          sum += leftNode.val
        } else {
          sum += sumOfLeftLeaves(leftNode)
        }
      }

      sum += sumOfLeftLeaves(node.right)
      return sum
    }
  }

  static func getSolution() {
    let nodes = [3, 9, 20, nil, nil, 15, 7]
    let tree = BinaryTreeHelper.buildTree(withNodes: nodes)
    print(tree ?? "")
    print(Solution().sumOfLeftLeaves(tree))
  }
}
