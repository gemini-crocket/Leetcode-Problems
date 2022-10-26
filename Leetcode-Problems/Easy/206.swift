//
//  206.swift : Reverse Linked List
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 23/10/2022.
//

struct P206 {
  class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
      var currentNode: ListNode? = head
      var previousNode: ListNode? = nil

      while let temporaryNode = currentNode {
        previousNode = ListNode(temporaryNode.val, (previousNode == nil ? nil : previousNode))
        currentNode = temporaryNode.next
      }
      return previousNode
    }
  }
}
