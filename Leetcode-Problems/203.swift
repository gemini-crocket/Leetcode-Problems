//
//  203.swift : Remove Linked List Elements
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 22/10/2022.
//

struct P203 {
  // Definition for singly-linked list.
  public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

  class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
      var dummy = ListNode(0)
      dummy.next = head

      var prev = dummy, head = head

      while head != nil {
        if head?.val == val {
          prev.next = head?.next
        } else {
          prev = head!
        }
        head = head?.next
      }

      return dummy.next
    }
  }
}
