//
//  141.swift : Linked List Cycle
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 22/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P141 {
  class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
      if head == nil {
        return false
      }

      var slow = head
      var fast = head?.next

      while slow != nil, fast != nil {
        guard slow !== fast else { return true }
        slow = slow?.next
        fast = fast?.next?.next
      }

      return false
    }
  }
}
