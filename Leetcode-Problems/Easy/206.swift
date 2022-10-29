//
//  206.swift : Reverse Linked List
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 23/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P206 {
  class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
      var currentNode: ListNode? = head
      var previousNode: ListNode?

      while let temporaryNode = currentNode {
        previousNode = ListNode(temporaryNode.val, (previousNode == nil ? nil : previousNode))
        currentNode = temporaryNode.next
      }
      return previousNode
    }
  }
}
