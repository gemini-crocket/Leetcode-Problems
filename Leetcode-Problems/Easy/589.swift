//
//  589.swift - N-ary Tree Preorder Traversal
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/n-ary-tree-preorder-traversal/
//  Category : Stack, Tree, Depth-First Search
//
//  Created by Thomas Heinis on 04/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Given the root of an n-ary tree, return the preorder traversal
  of its nodes' values.

  Nary-Tree input serialization is represented in their level order
  traversal. Each group of children is separated by the null value */

enum P589 {
  class Solution {
    func preorder(_ root: Node?) -> [Int] {
      guard let root else { return [] }

      var preordered: [Int] = [root.val]

      root.children.forEach {
        preordered.append(contentsOf: preorder($0))
      }

      return preordered
    }
  }

  static func getSolution() {
    let values = [1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil, 8, nil, 9, 10, nil, nil, 11, nil, 12, nil, 13, nil, nil, 14]
    let tree = EnaryTreeHelper.build(with: values)
    print(Solution().preorder(tree))
  }
}
