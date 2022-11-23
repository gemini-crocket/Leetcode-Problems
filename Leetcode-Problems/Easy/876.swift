//
//  876.swift - Middle of the Linked List
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/middle-of-the-linked-list/
//  Category : Linked List, Two Pointers
//
//  Created by Thomas Heinis on 23/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P876 {
  class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
      if head == nil {
        return nil
      }

      var slowPointer = head
      var fastPointer = head

      while fastPointer != nil && fastPointer?.next != nil {
        slowPointer = slowPointer?.next
        fastPointer = fastPointer?.next?.next
      }

      return slowPointer
    }
  }

  static func getSolution() {
    let head = [1, 2, 3, 4, 5, 6]
    let list = LinkedListHelper.buildLinkedList(withNodes: head)
    print(Solution().middleNode(list) as Any)
  }
}
