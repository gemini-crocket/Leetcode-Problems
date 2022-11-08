//
//  202.swift - Happy Number
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/happy-number/
//  Category : Hash Table, Math, Two Pointers
//
//  Created by Thomas Heinis on 03/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Write an algorithm to determine if a number n is happy.

  A happy number is a number defined by the following process:
  - Starting with any positive integer, replace the number
  by the sum of the squares of its digits.
  - Repeat the process until the number equals 1 (where
  it will stay), or it loops endlessly in a cycle which does
  not include 1.
  - Those numbers for which this process ends in 1 are happy.
  Return true if n is a happy number, and false if not. */

enum P202 {
  class Solution {
    func isHappy(_ number: Int) -> Bool {
      var slowPointer = number
      var fastPointer = getNext(number)

      while fastPointer != 1 && slowPointer != fastPointer {
        slowPointer = getNext(slowPointer)
        fastPointer = getNext(getNext(fastPointer))
      }

      return fastPointer == 1
    }

    func getNext(_ number: Int) -> Int {
      var sum = 0
      var input = number

      while input > 0 {
        let remainder = input % 10
        sum += remainder * remainder
        input /= 10
      }

      return sum
    }
  }

  static func getSolution() {
    let number = 19
    print(Solution().isHappy(number))
  }
}
