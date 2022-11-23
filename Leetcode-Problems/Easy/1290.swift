//
//  1290.swift - Convert Binary Number in a Linked List to Integer
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
//  Category : Linked List, Math
//
//  Created by Thomas Heinis on 23/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1290 {
  class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
      var decimalValue = 0
      var node = head

      while node != nil {
        decimalValue = (decimalValue << 1) | (node?.val ?? 0)
        node = node?.next
      }
      return decimalValue
    }
  }

  static func getSolution() {
    let head = [1, 0, 1]
    let list = LinkedListHelper.buildLinkedList(withNodes: head)
    print(Solution().getDecimalValue(list))
  }
}
