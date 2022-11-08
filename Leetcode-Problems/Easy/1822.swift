//
//  1822.swift - Sign of the Product of an Array
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/sign-of-the-product-of-an-array/
//  Category : Array, Math
//
//  Created by Thomas Heinis on 03/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* There is a function signFunc(x) that returns:

  1 if x is positive.
  -1 if x is negative.
  0 if x is equal to 0.

  You are given an integer array nums. Let product be the product
  of all values in the array nums.

  Return signFunc(product). */

enum P1822 {
  class Solution {
    func arraySign(_ nums: [Int]) -> Int {
      var sign = 1

      for num in nums {
        if num == 0 {
          return 0
        }
        if num < 0 {
          sign = -sign
        }
      }

      return sign
    }
  }

  static func getSolution() {
    let nums = [-1, 1, -1, 1, -1]
    print(Solution().arraySign(nums))
  }
}
