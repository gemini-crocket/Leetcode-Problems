//
//  203.swift : Remove Linked List Elements
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 22/10/2022.
//

struct P203 {
  class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
      let dummy = ListNode(0)
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
