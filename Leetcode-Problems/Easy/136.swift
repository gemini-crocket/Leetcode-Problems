//
//  136.swift - Single Number
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/single-number/
//  Category  : Array, Bit Manipulation
//
//  Created by Thomas Heinis on 30/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*

  Given a non-empty array of integers nums, every element appears
  twice except for one. Find that single one.

  You must implement a solution with a linear runtime complexity
  and use only constant extra space.

  */

enum P136 {
  class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
      var output = nums[0]

      for number in nums[1...] {
        output ^= number
      }
      return output
    }
  }

  static func getSolution() {
    let numbers = [4, 1, 2, 1, 2]
    print(Solution().singleNumber(numbers))
  }
}
