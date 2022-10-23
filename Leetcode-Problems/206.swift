//
//  206.swift : Reverse Linked List
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 23/10/2022.
//

struct P206 {

  // Definition for singly-linked list.
  public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

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
