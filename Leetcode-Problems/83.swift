//
//  83.swift : Remove Duplicates from Sorted List
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 23/10/2022.
//

struct P83 {
  // Definition for singly-linked list.
  public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

  class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
      var current: ListNode? = head
      while current != nil && current?.next != nil {
        if current?.val == current?.next?.val {
          current?.next = current?.next?.next
        } else {
          current = current?.next
        }
      }
      return head
    }
  }
}
