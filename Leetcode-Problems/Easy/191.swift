//
//  191.swift - Number of 1 Bits
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/number-of-1-bits/
//  Category : Divide and Conquer, Bit Manipulation
//
//  Created by Thomas Heinis on 01/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Write a function that takes an unsigned integer and returns
  the number of '1' bits it has (also known as the Hamming weight). */

enum P191 {
  class Solution {
    func hammingWeight(_ number: Int) -> Int {
      var hammingWeight = 0
      var number = number

      while number != 0 {
        hammingWeight += 1
        number &= number - 1
      }

      return hammingWeight
    }
  }

  static func getSolution() {
    let number = 4294967293
    print(Solution().hammingWeight(number))
  }
}
