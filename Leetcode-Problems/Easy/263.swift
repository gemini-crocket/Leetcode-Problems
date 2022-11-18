//
//  263.swift - Ugly Number
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/ugly-number/
//  Category : Math
//
//  Created by Thomas Heinis on 18/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P263 {
  class Solution {
    func isUgly(_ number: Int) -> Bool {
      if number < 1 {
        return false
      }

      var pivot = number

      for factor in [2, 3, 5] {
        while pivot % factor == 0 {
          pivot /= factor
        }
      }
      return pivot == 1
    }
  }

  static func getSolution() {
    let number = 14
    print(Solution().isUgly(number))
  }
}
